MASTER = build

ifndef MASTER
	$(Error MASTER variable not specified. Build with make MASTER=<build|build-aws|....>)
endif

JENKINS_USER=distro
JENKINS_UID=1033
JENKINS_VERSION=2.303.1

IMAGE_NAME = devops/jenkins-master-$(MASTER)

MAKE_COMMON ?= ../

BUILD_ARGS = JENKINS_USER=$(JENKINS_USER) JENKINS_UID=$(JENKINS_UID) JENKINS_VERSION=$(JENKINS_VERSION)
include $(MAKE_COMMON)/docker.mk
include $(MAKE_COMMON)/common.mk
