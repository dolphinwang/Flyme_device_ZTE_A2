.class Lcom/android/mipop/widget/MeterBase$1;
.super Ljava/lang/Object;
.source "MeterBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/widget/MeterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/widget/MeterBase;


# direct methods
.method constructor <init>(Lcom/android/mipop/widget/MeterBase;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/mipop/widget/MeterBase$1;->this$0:Lcom/android/mipop/widget/MeterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/mipop/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MipopPosX"

    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    :goto_0
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MipopPosY"

    sget v2, Lcom/android/mipop/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MipopPosX"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
