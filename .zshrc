# Proxy, 7897 is the default port used by clash
export http_proxy="http://localhost:7897"
export https_proxy="http://localhost:7897"
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

# Claude Code with DeepSeek API, https://api-docs.deepseek.com/quick_start/agent_integrations/claude_code
export ANTHROPIC_BASE_URL=https://api.deepseek.com/anthropic
export ANTHROPIC_AUTH_TOKEN=<your DeepSeek API Key>
export ANTHROPIC_MODEL=deepseek-v4-pro[1m]
export ANTHROPIC_DEFAULT_OPUS_MODEL=deepseek-v4-pro[1m]
export ANTHROPIC_DEFAULT_SONNET_MODEL=deepseek-v4-pro[1m]
export ANTHROPIC_DEFAULT_HAIKU_MODEL=deepseek-v4-flash
export CLAUDE_CODE_SUBAGENT_MODEL=deepseek-v4-flash
export CLAUDE_CODE_EFFORT_LEVEL=max
