#=============================================================================
#     FileName: Makefile
#         Desc: Auto Blog Makefile
#       Author: Lee Meng
#        Email: leaveboy@gmail.com
#     HomePage: http://leaveboy.is-programmer.com/
#      Version: 0.0.1
#   LastChange: 2013-01-26 23:32:52
#      History:
#=============================================================================
src = /tmp/compiled/
target = ../leemeng0x61.github.io

all:
	@bundle exec ruhoh compile '${src}'
	#@bundle exec ruhoh compile

.PHONE:install
install:
	rm ${target}/* -fr
	cp ${src}* ${target} -fr

.PHONE:clean
clean:
	@rm ${src} -fr

.PHONE:push
push:
	cd ${target} && git add . && git commit -a -m "update" && git push

.PHONE:test
test:
	bundle exec rackup -p 9292
