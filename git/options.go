package git

import (
	"log"
	"strings"
)

// Option is an interface that specifies instrumentation configuration options.
type Option interface {
	apply(*config)
}

// optionFunc is a type of function that can be used to implement the Option interface.
// It takes a pointer to a config struct and modifies it.
type optionFunc func(*config)

// Ensure that optionFunc satisfies the Option interface.
var _ Option = (*optionFunc)(nil)

// The apply method of optionFunc type is implemented here to modify the config struct based on the function passed.
func (o optionFunc) apply(c *config) {
	o(c)
}

// WithDiffUnified is a function that generate diffs with <n> lines of context instead of the usual three.
func WithDiffUnified(val int) Option {
	return optionFunc(func(c *config) {
		c.diffUnified = val
	})
}

// WithExcludeList returns an Option that sets the excludeList field of a config object to the given value.
func WithExcludeList(val []string) Option {
	return optionFunc(func(c *config) {
		// If the given value is empty, do nothing.
		if len(val) == 0 {
			return
		}
		c.excludeList = val
	})
}

// WithEnableAmend returns an Option that sets the isAmend field of a config object to the given value.
func WithEnableAmend(val bool) Option {
	return optionFunc(func(c *config) {
		c.isAmend = val
	})
}

// WithDiffHashes returns an Option that sets the diffHashes field of a config object to the given value.
// If the given value is empty, then the default value is used.
func WithDiffHashes(val string) Option {
	return optionFunc(func(c *config) {
		split := strings.Split(val, "..")
		if len(split) == 2 {
			c.diffHashes[0] = split[0]
			c.diffHashes[1] = split[1]
			if c.diffHashes[0] == "" {
				c.diffHashes[0] = "HEAD^"
			}
			if c.diffHashes[1] == "" {
				c.diffHashes[1] = "HEAD"
			}
		} else {
			c.diffHashes[0] = "HEAD^"
			c.diffHashes[1] = "HEAD"
		}

		if c.diffHashes[0] == "HEAD^" && c.diffHashes[1] == "HEAD" {
			//we use staged changes
			c.diffHashes[0] = ""
			c.diffHashes[1] = ""
		}
		log.Println("c.diffHashes", c.diffHashes)
	})
}

// config is a struct that stores configuration options for the instrumentation.
type config struct {
	diffUnified int
	diffHashes  [2]string
	excludeList []string
	isAmend     bool
}
