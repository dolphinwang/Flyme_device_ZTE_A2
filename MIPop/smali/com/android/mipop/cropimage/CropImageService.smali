.class public Lcom/android/mipop/cropimage/CropImageService;
.super Landroid/app/Service;
.source "CropImageService.java"


# instance fields
.field private isLauncher:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mipop/cropimage/CropImageService;->isLauncher:I

    return-void
.end method


# virtual methods
.method getTopActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 74
    .local v0, "manager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    .line 76
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 78
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 31
    const-string v3, ""

    const-string v4, "lxg CropImageService onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lxg CropImageService onCreate MergeImageUtil.isScrollMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-boolean v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageService;->stopSelf()V

    .line 68
    :goto_0
    return-void

    .line 40
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_1
    new-instance v2, Lcom/android/mipop/cropimage/TakePhoto;

    invoke-direct {v2, p0}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    invoke-virtual {v2}, Lcom/android/mipop/cropimage/TakePhoto;->start()V

    .line 46
    sget-object v3, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 47
    const v3, 0x7f090584

    invoke-virtual {p0, v3}, Lcom/android/mipop/cropimage/CropImageService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 50
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageService;->stopSelf()V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p0}, Lcom/android/mipop/cropimage/CropImageService;->getTopActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "activityTop":Ljava/lang/String;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lxg activityTop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v3, "com.zte.mifavor.launcher"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.android.mipop"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.android.launcher3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    :cond_2
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/mipop/cropimage/CropImageService;->isLauncher:I

    .line 61
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CropImage"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v3, "isLauncher"

    iget v4, p0, Lcom/android/mipop/cropimage/CropImageService;->isLauncher:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/CropImageService;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageService;->stopSelf()V

    goto :goto_0

    .line 41
    .end local v0    # "activityTop":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "tp":Lcom/android/mipop/cropimage/TakePhoto;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
