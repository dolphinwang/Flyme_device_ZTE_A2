.class Lcom/android/mipop/cropimage/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/android/mipop/cropimage/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/android/mipop/cropimage/RotateBitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/ImageViewTouchBase;Lcom/android/mipop/cropimage/RotateBitmap;Z)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase$1;->this$0:Lcom/android/mipop/cropimage/ImageViewTouchBase;

    iput-object p2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase$1;->val$bitmap:Lcom/android/mipop/cropimage/RotateBitmap;

    iput-boolean p3, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase$1;->this$0:Lcom/android/mipop/cropimage/ImageViewTouchBase;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase$1;->val$bitmap:Lcom/android/mipop/cropimage/RotateBitmap;

    iget-boolean v2, p0, Lcom/android/mipop/cropimage/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/cropimage/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/android/mipop/cropimage/RotateBitmap;Z)V

    .line 160
    return-void
.end method
