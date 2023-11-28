/*
  Warnings:

  - You are about to drop the `Produto` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "produto_categoria " DROP CONSTRAINT "produto_categoria _produto_id_fkey";

-- DropTable
DROP TABLE "Produto";

-- CreateTable
CREATE TABLE "produtos" (
    "id" UUID NOT NULL,
    "nome" VARCHAR(50) NOT NULL,
    "descricao" VARCHAR(200) NOT NULL,
    "valor" INTEGER NOT NULL,
    "data_criacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "data_atualizacao" TIMESTAMP(3) NOT NULL,
    "data_exclusao" TIMESTAMP(3),

    CONSTRAINT "produtos_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "produto_categoria " ADD CONSTRAINT "produto_categoria _produto_id_fkey" FOREIGN KEY ("produto_id") REFERENCES "produtos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
