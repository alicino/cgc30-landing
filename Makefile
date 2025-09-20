BRANCH?=main
MSG?=chore: live deploy


.PHONY: dev go-live open preview


dev:
python3 -m http.server 8080


open:
open http://localhost:8080


preview: dev


# comando do palco: um push e o Pages publica
go-live:
git add -A
git commit -m "$(MSG)" || true
git push origin $(BRANCH)
