.class public Lcom/android/mipop/longscreenshot/LongCropImageService;
.super Landroid/app/Service;
.source "LongCropImageService.java"


# static fields
.field private static STEP_HEIGH:I

.field private static TAG:Ljava/lang/String;

.field private static filePath:Ljava/lang/String;

.field private static iamgeSuffix:Ljava/lang/String;


# instance fields
.field private PIC_NUM:I

.field private addBitmap:Landroid/graphics/Bitmap;

.field private listHight:I

.field private listX:I

.field private listY:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private pictureNum:I

.field private result:I

.field private scrollY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "LongCropImageService"

    sput-object v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "/Screenshots_temp/Screenshot_"

    sput-object v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->filePath:Ljava/lang/String;

    .line 41
    const-string v0, ".jpg"

    sput-object v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->iamgeSuffix:Ljava/lang/String;

    .line 48
    const/16 v0, 0x320

    sput v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->PIC_NUM:I

    return-void
.end method

.method private add2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "first"    # Landroid/graphics/Bitmap;
    .param p2, "second"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 221
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 222
    .local v1, "height":I
    sget-object v4, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lxg add2Bitmap width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",first.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",second.getHeight() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 225
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 226
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, p2, v7, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 228
    return-object v2
.end method

.method public static delete(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 232
    sget-object v2, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lxg file.getgetAbsolutePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 239
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 240
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 243
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 244
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/mipop/longscreenshot/LongCropImageService;->delete(Ljava/io/File;)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getCut2Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 214
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewWidth:I

    sget v4, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewWidth:I

    iget v4, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listHight:I

    sget v5, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getDiskBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 308
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "imageDir":Ljava/lang/String;
    const-string v3, "allin.jpg"

    .line 311
    .local v3, "newFilename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Screenshots/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "path":Ljava/lang/String;
    sget-object v5, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lxg path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x0

    .line 316
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 324
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private getDiskBitmap(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "i"    # I

    .prologue
    .line 286
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "imageDir":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "fileNum":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mipop/longscreenshot/LongCropImageService;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mipop/longscreenshot/LongCropImageService;->iamgeSuffix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "imagePath":Ljava/lang/String;
    sget-object v5, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lxg imageDir = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    .line 294
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 299
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private getFirstCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 164
    sget-object v1, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg getFirstCutBitmap listY + STEP_HEIGH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    sget v4, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget v1, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewWidth:I

    iget v2, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    sget v3, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    add-int/2addr v2, v3

    invoke-static {p1, v5, v5, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getLastCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 183
    iget v2, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listHight:I

    sget v3, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x2

    .line 184
    .local v0, "bitmapY":I
    sget-object v2, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lxg getLastCutBitmap bitmapY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewWidth:I

    iget v4, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewHeight:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x2

    invoke-static {p1, v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 187
    .local v1, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private getLastCutBitmap2(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 191
    iget v2, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listHight:I

    sget v3, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->scrollY:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x2

    .line 192
    .local v0, "bitmapY":I
    sget-object v2, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lxg getLastCutBitmap bitmapY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewWidth:I

    iget v4, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewHeight:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x2

    invoke-static {p1, v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 196
    .local v1, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private getMidCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 200
    iget v2, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listHight:I

    sget v3, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x2

    .line 201
    .local v0, "bitmapY":I
    sget-object v2, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lxg getMidCutBitmap bitmapY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewWidth:I

    sget v4, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    invoke-static {p1, v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 204
    .local v1, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private getSecondCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 171
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewWidth:I

    iget v4, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewHeight:I

    iget v5, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getSecondCutBitmap2(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    iget v2, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    sget v3, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->scrollY:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x2

    .line 177
    .local v0, "bitmapY":I
    sget-object v2, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lxg getSecondCutBitmap2 bitmapY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewWidth:I

    iget v4, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewHeight:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x2

    invoke-static {p1, v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 179
    .local v1, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private saveYuv([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 265
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "imageDir":Ljava/lang/String;
    const-string v2, "yuvData.yuv"

    .line 268
    .local v2, "newFilename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Screenshots/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lxg path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 272
    .local v1, "imgout":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 273
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1    # "imgout":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private yuvSaveJpg([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 251
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "imageDir":Ljava/lang/String;
    const-string v2, "allin.jpg"

    .line 254
    .local v2, "newFilename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Screenshots/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lxg path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 258
    .local v1, "imageOutput":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 259
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "imageOutput":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 59
    const-string v0, ""

    const-string v1, "lxg LongCropImageService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    iput v0, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewWidth:I

    .line 62
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    iput v0, p0, Lcom/android/mipop/longscreenshot/LongCropImageService;->mPreviewHeight:I

    .line 64
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 68
    const-string v17, "x"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mipop/longscreenshot/LongCropImageService;->listX:I

    .line 69
    const-string v17, "y"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    .line 70
    const-string v17, "h"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mipop/longscreenshot/LongCropImageService;->listHight:I

    .line 71
    const-string v17, "scrollY"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mipop/longscreenshot/LongCropImageService;->scrollY:I

    .line 72
    const-string v17, "pictureNum"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mipop/longscreenshot/LongCropImageService;->pictureNum:I

    .line 73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->pictureNum:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 74
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->pictureNum:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mipop/longscreenshot/LongCropImageService;->PIC_NUM:I

    .line 77
    :cond_0
    sget-object v17, Lcom/android/mipop/longscreenshot/LongCropImageService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "lxg listX = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listX:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",listY = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listY:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",listHight = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listHight:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",scrollY = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->scrollY:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",pictureNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->pictureNum:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getDiskBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 81
    .local v3, "bitmapFirst":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getFirstCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    .line 83
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->PIC_NUM:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 84
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getDiskBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 86
    .local v10, "bitmapSecond":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listHight:I

    move/from16 v17, v0

    sget v18, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 87
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 91
    .local v11, "bitmapSecondTemp":Landroid/graphics/Bitmap;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/mipop/longscreenshot/LongCropImageService;->add2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 92
    .local v12, "bitmapSecondTemp2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    .line 93
    const/4 v13, 0x2

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->PIC_NUM:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_8

    .line 94
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->PIC_NUM:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_5

    .line 95
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getDiskBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 97
    .local v4, "bitmapLast":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listHight:I

    move/from16 v17, v0

    sget v18, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->scrollY:I

    move/from16 v17, v0

    sget v18, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 99
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getLastCutBitmap2(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 110
    .local v5, "bitmapLastTemp":Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lcom/android/mipop/longscreenshot/LongCropImageService;->add2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 111
    .local v6, "bitmapLastTemp2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    .line 93
    .end local v4    # "bitmapLast":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapLastTemp":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapLastTemp2":Landroid/graphics/Bitmap;
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 89
    .end local v11    # "bitmapSecondTemp":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapSecondTemp2":Landroid/graphics/Bitmap;
    .end local v13    # "i":I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getCut2Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .restart local v11    # "bitmapSecondTemp":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 101
    .restart local v4    # "bitmapLast":Landroid/graphics/Bitmap;
    .restart local v12    # "bitmapSecondTemp2":Landroid/graphics/Bitmap;
    .restart local v13    # "i":I
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getLastCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "bitmapLastTemp":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 104
    .end local v5    # "bitmapLastTemp":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->scrollY:I

    move/from16 v17, v0

    sget v18, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 105
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getSecondCutBitmap2(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "bitmapLastTemp":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 107
    .end local v5    # "bitmapLastTemp":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getSecondCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "bitmapLastTemp":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 113
    .end local v4    # "bitmapLast":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapLastTemp":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getDiskBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 115
    .local v7, "bitmapMore":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->listHight:I

    move/from16 v17, v0

    sget v18, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getMidCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 120
    .local v8, "bitmapMoreTemp":Landroid/graphics/Bitmap;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/android/mipop/longscreenshot/LongCropImageService;->add2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 121
    .local v9, "bitmapMoreTemp2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 118
    .end local v8    # "bitmapMoreTemp":Landroid/graphics/Bitmap;
    .end local v9    # "bitmapMoreTemp2":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getCut2Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .restart local v8    # "bitmapMoreTemp":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 124
    .end local v7    # "bitmapMore":Landroid/graphics/Bitmap;
    .end local v8    # "bitmapMoreTemp":Landroid/graphics/Bitmap;
    .end local v10    # "bitmapSecond":Landroid/graphics/Bitmap;
    .end local v11    # "bitmapSecondTemp":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapSecondTemp2":Landroid/graphics/Bitmap;
    .end local v13    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->PIC_NUM:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 125
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getDiskBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 127
    .restart local v10    # "bitmapSecond":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->scrollY:I

    move/from16 v17, v0

    sget v18, Lcom/android/mipop/longscreenshot/LongCropImageService;->STEP_HEIGH:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getSecondCutBitmap2(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 132
    .restart local v11    # "bitmapSecondTemp":Landroid/graphics/Bitmap;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/mipop/longscreenshot/LongCropImageService;->add2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 133
    .restart local v12    # "bitmapSecondTemp2":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    .line 136
    .end local v10    # "bitmapSecond":Landroid/graphics/Bitmap;
    .end local v11    # "bitmapSecondTemp":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapSecondTemp2":Landroid/graphics/Bitmap;
    :cond_8
    new-instance v16, Lcom/android/mipop/cropimage/TakePhoto;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 137
    .local v16, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mipop/longscreenshot/LongCropImageService;->addBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    sput-object v17, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 138
    sget-object v17, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v17, :cond_a

    .line 139
    const-string v15, "screen err!"

    .line 140
    .local v15, "toastText":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v15, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 141
    .local v14, "t2":Landroid/widget/Toast;
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/longscreenshot/LongCropImageService;->stopSelf()V

    .line 159
    .end local v14    # "t2":Landroid/widget/Toast;
    .end local v15    # "toastText":Ljava/lang/String;
    :goto_6
    return-void

    .line 130
    .end local v16    # "tp":Lcom/android/mipop/cropimage/TakePhoto;
    .restart local v10    # "bitmapSecond":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mipop/longscreenshot/LongCropImageService;->getSecondCutBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .restart local v11    # "bitmapSecondTemp":Landroid/graphics/Bitmap;
    goto :goto_5

    .line 146
    .end local v10    # "bitmapSecond":Landroid/graphics/Bitmap;
    .end local v11    # "bitmapSecondTemp":Landroid/graphics/Bitmap;
    .restart local v16    # "tp":Lcom/android/mipop/cropimage/TakePhoto;
    :cond_a
    new-instance v13, Landroid/content/Intent;

    const-string v17, "android.intent.action.CropImage"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v13, "i":Landroid/content/Intent;
    const-string v17, "isLongScreenshot"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const/high16 v17, 0x10000000

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    const-string v17, "android.intent.category.DEFAULT"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mipop/longscreenshot/LongCropImageService;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/longscreenshot/LongCropImageService;->stopSelf()V

    goto :goto_6
.end method
