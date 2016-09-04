.class Lcom/android/mipop/longscreenshot/MyMergeImage2Task;
.super Landroid/os/AsyncTask;
.source "MergeImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private addBitmap:Landroid/graphics/Bitmap;

.field private bitmapTemp:Landroid/graphics/Bitmap;

.field private headBitmap:Landroid/graphics/Bitmap;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mergeBitmap:Landroid/graphics/Bitmap;

.field private statusBarhight:I

.field private tempBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "first"    # Landroid/graphics/Bitmap;
    .param p2, "second"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 569
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 570
    .local v1, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 571
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 572
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 573
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, p2, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 574
    return-object v2
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 552
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getOthorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 556
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->statusBarhight:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->mPreviewWidth:I

    iget v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->mPreviewHeight:I

    iget v5, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->statusBarhight:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 558
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getStatusBarBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 562
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg statusBarhight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->statusBarhight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget v1, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->mPreviewWidth:I

    iget v2, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->statusBarhight:I

    invoke-static {p1, v4, v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 564
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 9
    .param p1, "param"    # [Ljava/lang/Integer;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 469
    const-string v4, "MyMergeImageTask"

    const-string v5, "lxg MyMergeImageTask"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget-object v4, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 471
    sget-object v4, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 472
    .local v2, "firstBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v2}, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->getStatusBarBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->headBitmap:Landroid/graphics/Bitmap;

    .line 473
    invoke-direct {p0, v2}, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->getOthorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    .line 474
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 475
    const/4 v2, 0x0

    .line 476
    :cond_0
    sget-object v4, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 477
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 478
    const-string v4, "MyMergeImage2Task"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lxg bitmapQueue size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v3, 0x3

    .line 480
    .local v3, "isOver":I
    sget-object v4, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->getOthorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->bitmapTemp:Landroid/graphics/Bitmap;

    .line 481
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->bitmapTemp:Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->tempBitmap:Landroid/graphics/Bitmap;

    .line 482
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->bitmapTemp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 483
    iput-object v7, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->bitmapTemp:Landroid/graphics/Bitmap;

    .line 484
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->tempBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 485
    const-string v4, "MyMergeImage2Task"

    const-string v5, "lxg tempBitmap != null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 487
    iput-object v7, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    .line 488
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->tempBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    .line 489
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 490
    iput-object v7, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->tempBitmap:Landroid/graphics/Bitmap;

    .line 501
    :goto_0
    sget-object v4, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScroolOver:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 503
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 504
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 492
    :cond_1
    const-string v4, "MyMergeImage2Task"

    const-string v5, "lxg tempBitmap == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sput-boolean v8, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isSuspend:Z

    .line 495
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    .end local v3    # "isOver":I
    :cond_2
    :goto_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScroolOver:Z

    .line 511
    sget-object v4, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->clear()V

    .line 512
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->headBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v5}, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 513
    .local v0, "cb":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    .line 514
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 517
    .end local v0    # "cb":Landroid/graphics/Bitmap;
    .end local v2    # "firstBitmap":Landroid/graphics/Bitmap;
    :cond_3
    return-object v7

    .line 496
    .restart local v2    # "firstBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "isOver":I
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 505
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 506
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 448
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 522
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 523
    const-string v4, ""

    const-string v5, "lxg onPostExecute 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v1, Landroid/content/Intent;

    const-string v4, "dismiss_Dialog"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/mipop/api/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 528
    .local v2, "overMode":Landroid/content/Intent;
    const-string v4, "step"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    const-string v4, "com.zte.scrollscreenshot"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/mipop/api/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    new-instance v3, Lcom/android/mipop/cropimage/TakePhoto;

    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 533
    .local v3, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 534
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 535
    iput-object v7, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->addBitmap:Landroid/graphics/Bitmap;

    .line 536
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->headBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 537
    iget-object v4, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->headBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    iput-object v7, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->headBitmap:Landroid/graphics/Bitmap;

    .line 541
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CropImage"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "i":Landroid/content/Intent;
    const-string v4, "isLongScreenshot"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 544
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/mipop/api/MyApplication;->startActivity(Landroid/content/Intent;)V

    .line 547
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    .line 548
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 448
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 461
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 462
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    iput v0, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->mPreviewWidth:I

    .line 463
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    iput v0, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->mPreviewHeight:I

    .line 464
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v1}, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->statusBarhight:I

    .line 465
    return-void
.end method
