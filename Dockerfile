FROM vvakame/review:3.2

LABEL "com.github.actions.name"="Re:VIEW PDF Generator"
LABEL "com.github.actions.description"="builds PDF from Re:VIEW repository and uploads as Artifacts"
LABEL "com.github.actions.icon"="book"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/takahashim/review-pdf-generator-action"
LABEL "homepage"="https://github.com/takahashim/review-pdf-generator-action"
LABEL "maintainer"="takahashim <takahashimm@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ADD copy_build_file.rb /copy_build_file.rb
ENTRYPOINT ["/entrypoint.sh"]
