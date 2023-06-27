CFLAGS = -std=c++17 -O2
LDFLAGS = `pkg-config --libs vulkan glfw3 glm`

VulkanTest: main.cpp
	g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest
