# Copyright (C) 2017 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ZeroROM versioning
PRODUCT_BRAND ?= ZeroROM

# If ZERO_BUILD_TYPE is not defined, set to EXPERIMENTAL
ifndef ZERO_BUILD_TYPE
    ZERO_BUILD_TYPE := EXPERIMENTAL
endif

ZERO_VERSION := $(PLATFORM_VERSION)-$(shell date +%Y%m%d)-$(ZERO_BUILD_TYPE)-$(ZERO_PRODUCT_DEVICE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.zero.version=$(ZERO_VERSION)
