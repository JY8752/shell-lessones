# シェルスクリプト学習

[シェルスクリプト基本リファレンス](https://www.amazon.co.jp/%E6%94%B9%E8%A8%82%E7%AC%AC3%E7%89%88-%E3%82%B7%E3%82%A7%E3%83%AB%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%97%E3%83%88%E5%9F%BA%E6%9C%AC%E3%83%AA%E3%83%95%E3%82%A1%E3%83%AC%E3%83%B3%E3%82%B9-sh%E3%81%A7%E3%80%81%E3%81%93%E3%81%93%E3%81%BE%E3%81%A7%E3%81%A7%E3%81%8D%E3%82%8B-PRESS-plus/dp/4774186945)の学習用リポジトリ

ついでに[bun](https://bun.sh/) x [zx](https://github.com/google/zx)でシェルスクリプトを書けるかも試したい

## bun

### install

```
% curl -fsSL https://bun.sh/install | bash -s "bun-v1.0.2"

% bun --version
1.0.2
```

現時点での最新バージョンはv1.0.3だが以下のエラーが出るのでv1.0.2を指定してインストール。

https://github.com/oven-sh/bun/issues/6035

### init

```
% bun init
```

```
% tree .
.
├── README.md
├── bun.lockb
├── index.ts
├── lessone1
│   └── example.sh
├── node_modules
│   └── bun-types
│       ├── README.md
│       ├── package.json
│       ├── tsconfig.json
│       └── types.d.ts
├── package.json
└── tsconfig.json
```

```
% bun run index.ts 
Hello via Bun!
```

### add zx

```
% bun add zx
bun add v1.0.2 (37edd5a6)

 installed zx@7.2.3 with binaries:
  - zx


 57 packages installed [2.84s]
```

