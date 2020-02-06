## How to read Gzipped file?

```ex
filename
|> File.stream!([:compressed])
|> Enum.into("")
```
