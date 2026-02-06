os: mac
app: iterm2
app: Warp
app: ghostty
-

tag(): terminal
# todo: filemanager support
#tag(): user.file_manager
tag(): user.generic_unix_shell
tag(): user.git
tag(): user.kubectl
tag(): user.tabs
tag(): user.readline

enter: key("enter")
sublime: insert("subl ")
slash exit:
    insert("/exit")
    sleep(20ms)
    key("enter")
slash em sip:
    insert("/mcp")
    sleep(20ms)
    key("enter")
slash model:
    insert("/model")
    sleep(20ms)
    key("enter")
start clod:
	insert("claude")
	key("enter")
intellij:
	insert("idea .")
	key("enter")
Katie source:
	insert("cd ~/src/ghe.spotify.net")
	key("enter")
set java eleven:
	insert("sdk default java 11.0.16-amzn")
	key("enter")
set java seventeen:
	insert("sdk default java 17.0.4-amzn")
jupiter notebook: 
    insert("jupyter notebook")
    key("enter")
git checkout:
	insert("git checkout -b tarad/ADSSERV-")
maven verify:
	insert("mvn verify")
	key("enter")
maven clean verify:
	insert("mvn clean verify")
	key("enter")
maven clean compile:
	insert("mvn clean compile")
	key("enter")
maven generate sources:
	insert("mvn generate-sources")
	key("enter")
maven package:
	insert("mvn -P uberJar package")
	key("enter")
maven format:
	insert("mvn fmt:format")
	key("enter")
go mod vendor:
	insert("go mod vendor")
	key("enter")
go mod tidy:
	insert("go mod tidy")
	key("enter")
make test:
	insert("make test")
	key("enter")
make deploy:
	insert("make deploy-kustomize")
	key("enter")
deploy staging:
	insert("make deploy-kustomize")
	key("enter")
	sleep(1s)
	key("1")
	key("enter")
	sleep(1s)
	key("3")
	key("enter")
make up:
	insert("make down && make up")
	key("enter")
make down:
	insert("make down")
	key("enter")
make down up:
	insert("make down && make up")
	key("enter")
make vendor:
	insert("make vendor")
	key("enter")
go get:
	insert("go get ")
Katie meg:
	insert("cd /Users/tarad/src/ghe.spotify.net/megaphone")
	key("enter")
Katie work:
	insert("cd /Users/tarad/src/ghe.spotify.net")
	key("enter")
impersonate matcha:
	insert("gcloud config set auth/impersonate_service_account matcha@gke-accounts.iam.gserviceaccount.com")
	key("enter")
of token matcha:
	insert("gcloud auth print-identity-token --impersonate-service-account=matcha@gke-accounts.iam.gserviceaccount.com --audiences='http://matcha' --include-email")
	key("enter")
impersonate add logic:
	insert("gcloud config set auth/impersonate_service_account local-development@ad-logic.iam.gserviceaccount.com")
	key("enter")
unset impersonate:
	insert("gcloud config unset auth/impersonate_service_account")
	key("enter")
test traffic:
	insert("curl -X GET 'http://localhost:8080/RYDPO6840119927.mp3' -H 'Ip-Sim: 68.202.214.206'")
	key("enter")
test handler:
	insert("curl -X GET -d '{")
	key(enter)
	insert("        \"request_id\": \"4637f44b-869a-4af5-98f4-d12062630437\",")
	key(enter)
	insert("        \"user_info\": {")
	key(enter)
	insert("           \"exelate_person_id\": \"\",")
	key(enter)
	insert("           \"ip_address\": \"68.202.214.206\",")
	key(enter)
	insert("           \"user_agent\": \"xbox\",")
	key(enter)
	insert("           \"device_platform\": \"\",")
	key(enter)
	insert("           \"app_id\": \"\",")
	key(enter)
	insert("           \"app_version\": \"\",")
	key(enter)
	insert("           \"nielsen_audience_segments\": null")
	key(enter)
	insert("        },")
	key(enter)
	insert("        \"slot_requests\": [")
	key(enter)
	insert("           {")
	key(enter)
	insert("              \"slot\": \"midroll\",")
	key(enter)
	insert("              \"position\": 1")
	key(enter)
	insert("           }")
	key(enter)
	insert("        ],")
	key(enter)
	insert("        \"spotify_episode_id\": \"spotify:episode:6QkVOdcAZcUF8XvFif8TUN\",")
	key(enter)
	insert("        \"competitive_exclusions\": null")
	key(enter)
	insert("     }' http://localhost:8083 -v")
	key(enter)