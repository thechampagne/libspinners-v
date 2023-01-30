# libspinners-v

[![](https://img.shields.io/github/v/tag/thechampagne/libspinners-v?label=version)](https://github.com/thechampagne/libspinners-v/releases/latest) [![](https://img.shields.io/github/license/thechampagne/libspinners-v)](https://github.com/thechampagne/libspinners-v/blob/main/LICENSE)

V binding for **libspinners** an elegant terminal spinners.

### Download

**VPM**
```
v install thechampagne.spinners
```

### Example

```v
fn main() {
	spin := spinner.new(Spinners.dots9, 'Waiting for 3 seconds')
	defer {
		spin.clean()
	}
	time.sleep(3e+9)
	spin.stop()
}
```

### License

This repo is released under the [MIT](https://github.com/thechampagne/libspinners-v/blob/main/LICENSE).