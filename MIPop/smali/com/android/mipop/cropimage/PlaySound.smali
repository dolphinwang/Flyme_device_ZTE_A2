.class public Lcom/android/mipop/cropimage/PlaySound;
.super Ljava/lang/Object;
.source "PlaySound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public playShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;-><init>(Lcom/android/mipop/cropimage/PlaySound;Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .local v0, "thread":Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;
    invoke-virtual {v0}, Lcom/android/mipop/cropimage/PlaySound$PlayShotThread;->start()V

    .line 29
    return-void
.end method

.method public playShortDriect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v3, "HouJiong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-nez p2, :cond_0

    .line 41
    :try_start_0
    const-string v3, "HouJiong"

    const-string v4, "play source is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v1, Landroid/media/SoundPool;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    .line 47
    .local v1, "pool":Landroid/media/SoundPool;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    .line 49
    .local v2, "sourceid":I
    new-instance v3, Lcom/android/mipop/cropimage/PlaySound$1;

    invoke-direct {v3, p0, v2}, Lcom/android/mipop/cropimage/PlaySound$1;-><init>(Lcom/android/mipop/cropimage/PlaySound;I)V

    invoke-virtual {v1, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v1    # "pool":Landroid/media/SoundPool;
    .end local v2    # "sourceid":I
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HouJiong"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    return-void
.end method
