.class public Lcom/android/mipop/cropimage/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RotateBitmap"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mRotation:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mRotation:I

    .line 25
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    .line 45
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mRotation:I

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 51
    .local v0, "cx":I
    iget-object v3, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 52
    .local v1, "cy":I
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 53
    iget v3, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mRotation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 54
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/RotateBitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/RotateBitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 56
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :cond_0
    return-object v2
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mRotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public isOrientationChanged()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mRotation:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 84
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/mipop/cropimage/RotateBitmap;->mRotation:I

    .line 29
    return-void
.end method
