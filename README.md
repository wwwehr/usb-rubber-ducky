## Payload encoding tool for USB Rubber Ducky

This is a Docker image for the [Hak5 USB Rubber Ducky](https://github.com/hak5darren/USB-Rubber-Ducky/wiki/) payload encoder. The USB Rubber Ducky is a Human Interface Device programmable with a simple scripting language allowing penetration testers to quickly and easily craft and deploy security auditing payloads that mimic human keyboard input. The source is written in C and requires the AVR Studio 5 IDE from atmel.com/avrstudio. Hardware is commercially available at hakshop.com. Tools and payloads can be found at usbrubberducky.com. Quack!

The Docker image currently supports:

* creating an `inject.bin` payload

## Run

### Run via Docker CLI client

To run the USB Rubber Ducky container you can execute:

```bash
docker run -it --rm --name usbrubberducky --volume <ducky script path>:/workspace wwwehr/usb-rubber-ducky -o inject.bin -i test.ducky
```

## Configuration

### Volumes

Please mount the following volumes inside your container:
* `/workspace`: Holds all the ducky script files that you will specify with the `-i` argument

## See also

- https://github.com/hak5darren/USB-Rubber-Ducky/wiki
