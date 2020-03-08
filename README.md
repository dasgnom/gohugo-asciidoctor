# gohugo-asciidoctor

*gohugo-asciidoctor* is a container to build static sites with hugo using asciidoc as markup language.

## Usage

### Environment

- **HUGO_GIT_REPOSITORY**: Git repository containing the sources
- **HUGO_CONFIG_FILE**: hugo config file - _defaults to `config.toml`_
- **HUGO_BASE_URL**: hugo's baseURL - _defaults to `/`_

### Example

```docker run -v ~/my_rendered_blog:/build:rw -e "HUGO_GIT_REPOSITORY=https://git.example.com/repository.git" -e "HUGO_CONFIG_FILE=config.toml" -e "HUGO_BASE_URL=https://example.com/"```