.class Lcom/android/mipop/api/MyApplication$7;
.super Landroid/database/ContentObserver;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/api/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/api/MyApplication;


# direct methods
.method constructor <init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mipop/api/MyApplication$7;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/mipop/api/MyApplication$7;->this$0:Lcom/android/mipop/api/MyApplication;

    const-string v2, "lxg mMipopChangeObserver right"

    # invokes: Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mipop/api/MyApplication;->access$000(Lcom/android/mipop/api/MyApplication;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/mipop/api/MyApplication$7;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-virtual {v1}, Lcom/android/mipop/api/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "RIGHT_KEY"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, "rightKey":I
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget-object v2, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mipop/widget/MeterBase;->setImageResource(I)V

    .line 197
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget-object v2, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/mipop/widget/Until;->keyPressIconId:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->setResId(II)V

    .line 198
    return-void
.end method
