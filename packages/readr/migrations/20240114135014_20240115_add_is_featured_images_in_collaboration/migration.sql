-- AlterTable
ALTER TABLE "Collaboration" ADD COLUMN     "ImageDesktop" INTEGER,
ADD COLUMN     "ImageMobile" INTEGER,
ADD COLUMN     "ImageTablet" INTEGER,
ADD COLUMN     "isFeatured" BOOLEAN NOT NULL DEFAULT false;

-- CreateIndex
CREATE INDEX "Collaboration_ImageMobile_idx" ON "Collaboration"("ImageMobile");

-- CreateIndex
CREATE INDEX "Collaboration_ImageTablet_idx" ON "Collaboration"("ImageTablet");

-- CreateIndex
CREATE INDEX "Collaboration_ImageDesktop_idx" ON "Collaboration"("ImageDesktop");

-- AddForeignKey
ALTER TABLE "Collaboration" ADD CONSTRAINT "Collaboration_ImageMobile_fkey" FOREIGN KEY ("ImageMobile") REFERENCES "Image"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Collaboration" ADD CONSTRAINT "Collaboration_ImageTablet_fkey" FOREIGN KEY ("ImageTablet") REFERENCES "Image"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Collaboration" ADD CONSTRAINT "Collaboration_ImageDesktop_fkey" FOREIGN KEY ("ImageDesktop") REFERENCES "Image"("id") ON DELETE SET NULL ON UPDATE CASCADE;
