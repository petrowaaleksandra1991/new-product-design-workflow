# New product initialization contract

The initializer only works inside a copy of the workflow and does not change the master. It refuses to overwrite a non-empty active project without an explicit separate solution.

Creates from templates:

- `product-design/PROJECT-STATUS.md`;
- `product-design/INPUTS.md`;
- `product-design/REFERENCE-MANIFEST.md`;
- `product-design/SOURCE-MANIFEST.md`;
- `product-design/SOURCE-REGISTER.md`;
- `product-design/DECISION-LOG.md`;
- `product-design/DATA-EGRESS-LOG.md`;
- `product-design/context/PRODUCT-CONTEXT.md`;
- `product-design/design-system/EMERGING-SYSTEM-STATUS.md`;
- `product-design/products/<product-id>/`.

Does not pre-create empty main stage artifacts. Doesn't read Figma, doesn't do research, and doesn't write outside.
