FROM vvakame/review:3.2

LABEL "com.github.actions.name"="Re:VIEW PDF Builder"
LABEL "com.github.actions.description"="generate PDF file from Re:VIEW repository"
LABEL "com.github.actions.icon"="book"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/takahashim/review-generate-pdf-action"
LABEL "homepage"="http://github.com/takahashim/review-generate-pdf-action"
LABEL "maintainer"="takahashim <takahashimm@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ADD copy_build_file.rb /copy_build_file.rb
ENTRYPOINT ["/entrypoint.sh"]
