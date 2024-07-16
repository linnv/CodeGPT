module github.com/appleboy/CodeGPT

go 1.22.2

require (
	cloud.google.com/go v0.113.0
	cloud.google.com/go/ai v0.5.0
	cloud.google.com/go/auth v0.4.0
	cloud.google.com/go/auth/oauth2adapt v0.2.2
	cloud.google.com/go/compute/metadata v0.3.0
	cloud.google.com/go/longrunning v0.5.7
	github.com/appleboy/com v0.1.7
	github.com/appleboy/graceful v1.1.1
	github.com/erikgeiser/promptkit v0.9.0
	github.com/fatih/color v1.17.0
	github.com/felixge/httpsnoop v1.0.4
	github.com/fsnotify/fsnotify v1.7.0
	github.com/go-logr/logr v1.4.1
	github.com/go-logr/stdr v1.2.2
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da
	github.com/golang/protobuf v1.5.4
	github.com/google/generative-ai-go v0.13.0
	github.com/google/s2a-go v0.1.7
	github.com/google/uuid v1.6.0
	github.com/googleapis/enterprise-certificate-proxy v0.3.2
	github.com/googleapis/gax-go/v2 v2.12.4
	github.com/hashicorp/hcl v1.0.0
	github.com/inconshreveable/mousetrap v1.1.0
	github.com/joho/godotenv v1.5.1
	github.com/magiconair/properties v1.8.7
	github.com/mattn/go-colorable v0.1.13
	github.com/mattn/go-isatty v0.0.20
	github.com/mitchellh/mapstructure v1.5.0
	github.com/pelletier/go-toml/v2 v2.2.2
	github.com/rodaine/table v1.2.0
	github.com/sagikazarmark/locafero v0.4.0
	github.com/sagikazarmark/slog-shim v0.1.0
	github.com/sashabaranov/go-openai v1.24.0
	github.com/sourcegraph/conc v0.3.0
	github.com/spf13/afero v1.11.0
	github.com/spf13/cast v1.6.0
	github.com/spf13/cobra v1.8.0
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.18.2
	github.com/subosito/gotenv v1.6.0
	go.opencensus.io v0.24.0
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.51.0
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.51.0
	go.opentelemetry.io/otel v1.26.0
	go.opentelemetry.io/otel/metric v1.26.0
	go.opentelemetry.io/otel/trace v1.26.0
	go.uber.org/multierr v1.11.0
	golang.org/x/crypto v0.23.0
	golang.org/x/exp v0.0.0-20240506185415-9bf2ced13842
	golang.org/x/net v0.25.0
	golang.org/x/oauth2 v0.20.0
	golang.org/x/sync v0.7.0
	golang.org/x/sys v0.20.0
	golang.org/x/text v0.15.0
	golang.org/x/time v0.5.0
	google.golang.org/api v0.178.0
	google.golang.org/genproto v0.0.0-20240401170217-c3f982113cda
	google.golang.org/genproto/googleapis/api v0.0.0-20240506185236-b8a5c65736ae
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240506185236-b8a5c65736ae
	google.golang.org/grpc v1.63.2
	google.golang.org/protobuf v1.34.1
	gopkg.in/ini.v1 v1.67.0
	gopkg.in/yaml.v3 v3.0.1
)

replace github.com/sashabaranov/go-openai v1.24.0 => ./vendor2/github.com/sashabaranov/go-openai
