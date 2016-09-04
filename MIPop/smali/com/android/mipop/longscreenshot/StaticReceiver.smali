.class public Lcom/android/mipop/longscreenshot/StaticReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StaticReceiver.java"


# static fields
.field private static final CONTINUE_MODE:I = 0x2

.field private static final ENTER_MODE:I = 0x0

.field private static final LIST_MODE:I = 0x5

.field private static final MAX_SCROOL_LENGTH:I = 0xd

.field private static final OVER_MODE:I = -0x1

.field private static final SCROOL_CONTINUE_MODE:I = 0x4

.field private static final SCROOL_MODE:I = 0x6

.field private static final START_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StaticReceiver"

.field private static curBitmap:Landroid/graphics/Bitmap;

.field private static cur_mode:I

.field private static isToQueue:Z

.field private static mImageNum:I

.field private static preBitmap:Landroid/graphics/Bitmap;

.field private static scrollY:I

.field private static scroolMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 20
    sput v1, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    .line 21
    sput-boolean v0, Lcom/android/mipop/longscreenshot/StaticReceiver;->isToQueue:Z

    .line 23
    sput v0, Lcom/android/mipop/longscreenshot/StaticReceiver;->scrollY:I

    .line 24
    sput v1, Lcom/android/mipop/longscreenshot/StaticReceiver;->scroolMode:I

    .line 27
    sput v0, Lcom/android/mipop/longscreenshot/StaticReceiver;->cur_mode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private resetValue()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 210
    invoke-static {}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->reset()V

    .line 211
    sget-object v0, Lcom/android/mipop/longscreenshot/StaticReceiver;->preBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/android/mipop/longscreenshot/StaticReceiver;->preBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    sput-object v2, Lcom/android/mipop/longscreenshot/StaticReceiver;->preBitmap:Landroid/graphics/Bitmap;

    .line 215
    :cond_0
    sget-object v0, Lcom/android/mipop/longscreenshot/StaticReceiver;->curBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 216
    sget-object v0, Lcom/android/mipop/longscreenshot/StaticReceiver;->curBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    sput-object v2, Lcom/android/mipop/longscreenshot/StaticReceiver;->curBitmap:Landroid/graphics/Bitmap;

    .line 220
    :cond_1
    sput v1, Lcom/android/mipop/longscreenshot/StaticReceiver;->cur_mode:I

    .line 221
    sput v3, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    .line 222
    sput-boolean v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isSuspend:Z

    .line 223
    sput-boolean v1, Lcom/android/mipop/longscreenshot/StaticReceiver;->isToQueue:Z

    .line 224
    sput v3, Lcom/android/mipop/longscreenshot/StaticReceiver;->scroolMode:I

    .line 225
    sput-boolean v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScroolOver:Z

    .line 226
    sget-object v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 227
    sput-object v2, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addBitmap:Landroid/graphics/Bitmap;

    .line 228
    sput-boolean v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    .line 229
    return-void
.end method

.method private sendBottomToast(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090591

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "toastText":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 263
    .local v0, "t6":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 264
    return-void
.end method

.method private sendBroadcast(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "step"    # I

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "step"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v1, "com.zte.scrollscreenshot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method private sendLastToast(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090592

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "toastText":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 270
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    return-void
.end method

.method private sendOverToast(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090590

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "toastText":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 256
    .local v0, "t2":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    return-void
.end method

.method private sendSuspendToast(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09058f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "toastText":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 234
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    return-void
.end method

.method private showScreenshot(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CropImage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "isLongScreenshot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method private startShowDialogActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mipop/longscreenshot/ShowDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .local v0, "it":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "action":Ljava/lang/String;
    const-string v12, "mode"

    const/4 v13, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 44
    .local v7, "mode":I
    const/4 v12, 0x5

    if-eq v7, v12, :cond_0

    const/4 v12, 0x6

    if-ne v7, v12, :cond_1

    .line 45
    :cond_0
    sput v7, Lcom/android/mipop/longscreenshot/StaticReceiver;->cur_mode:I

    .line 47
    :cond_1
    const-string v12, "StaticReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lxg StaticReceiver action = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",mode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",cur_mode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/mipop/longscreenshot/StaticReceiver;->cur_mode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v11, Lcom/android/mipop/cropimage/TakePhoto;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 50
    .local v11, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    const-string v12, "com.zte.screenshotstart"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 52
    :try_start_0
    const-string v12, "StaticReceiver"

    const-string v13, "lxg mode send 0"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/android/mipop/longscreenshot/StaticReceiver;->resetValue()V

    .line 54
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBroadcast(Landroid/content/Context;I)V

    .line 55
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 57
    invoke-virtual {v11}, Lcom/android/mipop/cropimage/TakePhoto;->start()V

    .line 58
    sget-object v12, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    sput-object v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->preBitmap:Landroid/graphics/Bitmap;

    .line 59
    const-wide/16 v12, 0xc8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 60
    sget-object v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    sget-object v13, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v12, v13}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 61
    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    add-int/lit8 v12, v12, 0x1

    sput v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    .line 63
    const-string v12, "StaticReceiver"

    const-string v13, "lxg mode send 1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBroadcast(Landroid/content/Context;I)V

    .line 65
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_2
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v12

    .line 70
    :cond_3
    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->scroolMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->cur_mode:I

    const/4 v13, 0x5

    if-eq v12, v13, :cond_4

    .line 71
    const/4 v12, 0x1

    sput v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->scroolMode:I

    goto :goto_0

    .line 74
    :cond_4
    const-string v12, "com.zte.windowscrollover"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 75
    const-string v12, "StaticReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lxg screenshot mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",isToQueue = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/mipop/longscreenshot/StaticReceiver;->isToQueue:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",mImageNum = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v12, "x"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 78
    .local v5, "listX":I
    const-string v12, "y"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 79
    .local v6, "listY":I
    const-string v12, "h"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 80
    .local v4, "listHight":I
    const-string v12, "scrolly"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 81
    .local v8, "scroolHight":I
    const-string v12, "StaticReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lxg listX = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",listY = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",listHight = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",scroolHight = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 86
    :pswitch_1
    const-wide/16 v12, 0x4b0

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 87
    invoke-virtual {v11}, Lcom/android/mipop/cropimage/TakePhoto;->start()V

    .line 88
    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    const/16 v13, 0xa

    if-le v12, v13, :cond_5

    .line 89
    sget-object v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addBitmap:Landroid/graphics/Bitmap;

    sput-object v12, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 90
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->showScreenshot(Landroid/content/Context;)V

    .line 91
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendLastToast(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 97
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 94
    :cond_5
    sget-object v12, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v12, v6, v4, v8}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->spliceBitmap(Landroid/graphics/Bitmap;III)V

    .line 95
    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBroadcast(Landroid/content/Context;I)V

    .line 96
    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    add-int/lit8 v12, v12, 0x1

    sput v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 102
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBottomToast(Landroid/content/Context;)V

    .line 103
    sget-object v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addBitmap:Landroid/graphics/Bitmap;

    sput-object v12, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->showScreenshot(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 109
    :pswitch_3
    :try_start_2
    const-string v12, "StaticReceiver"

    const-string v13, "lxg mode receive 4"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-boolean v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isSuspend:Z

    if-eqz v12, :cond_6

    .line 111
    const-string v12, "StaticReceiver"

    const-string v13, "lxg mode receive isSuspend"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBroadcast(Landroid/content/Context;I)V

    .line 113
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendSuspendToast(Landroid/content/Context;)V

    .line 114
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isSuspend:Z

    .line 115
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    goto/16 :goto_0

    .line 174
    :catch_2
    move-exception v12

    goto/16 :goto_0

    .line 119
    :cond_6
    const-wide/16 v12, 0x514

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 120
    invoke-virtual {v11}, Lcom/android/mipop/cropimage/TakePhoto;->start()V

    .line 121
    sget-object v12, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    sput-object v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->curBitmap:Landroid/graphics/Bitmap;

    .line 122
    sget-object v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->preBitmap:Landroid/graphics/Bitmap;

    invoke-static {v12}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->getOthorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 123
    .local v10, "tempPre":Landroid/graphics/Bitmap;
    sget-object v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->curBitmap:Landroid/graphics/Bitmap;

    invoke-static {v12}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->getOthorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 125
    .local v9, "tempCur":Landroid/graphics/Bitmap;
    invoke-static {v10, v9}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isSimilar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 126
    const/4 v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBroadcast(Landroid/content/Context;I)V

    .line 127
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    .line 128
    if-eqz v10, :cond_7

    .line 129
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    const/4 v10, 0x0

    .line 132
    :cond_7
    if-eqz v9, :cond_8

    .line 133
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    const/4 v9, 0x0

    .line 136
    :cond_8
    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_9

    .line 137
    const-string v12, "StaticReceiver"

    const-string v13, "lxg mode receive isSuspend isSimilar =2"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBottomToast(Landroid/content/Context;)V

    .line 139
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->showScreenshot(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 142
    :cond_9
    const-string v12, "StaticReceiver"

    const-string v13, "lxg mode receive isSuspend isSimilar >2"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBottomToast(Landroid/content/Context;)V

    .line 144
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->startShowDialogActivity(Landroid/content/Context;)V

    .line 145
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScroolOver:Z

    goto/16 :goto_0

    .line 149
    :cond_a
    if-eqz v10, :cond_b

    .line 150
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    const/4 v10, 0x0

    .line 153
    :cond_b
    if-eqz v9, :cond_c

    .line 154
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    const/4 v9, 0x0

    .line 157
    :cond_c
    sget-object v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->curBitmap:Landroid/graphics/Bitmap;

    sput-object v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->preBitmap:Landroid/graphics/Bitmap;

    .line 158
    sget-object v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    sget-object v13, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v12, v13}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 159
    sget-object v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v12}, Ljava/util/Queue;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_d

    sget-boolean v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->isToQueue:Z

    if-nez v12, :cond_d

    .line 160
    new-instance v12, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;

    invoke-direct {v12}, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;-><init>()V

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Integer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/mipop/longscreenshot/MyMergeImage2Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->isToQueue:Z

    .line 163
    :cond_d
    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    const/16 v13, 0xd

    if-ne v12, v13, :cond_e

    .line 164
    const/4 v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBroadcast(Landroid/content/Context;I)V

    .line 165
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendLastToast(Landroid/content/Context;)V

    .line 166
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->startShowDialogActivity(Landroid/content/Context;)V

    .line 167
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScroolOver:Z

    .line 168
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    goto/16 :goto_0

    .line 171
    :cond_e
    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    add-int/lit8 v12, v12, 0x1

    sput v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    .line 172
    const-string v12, "StaticReceiver"

    const-string v13, "lxg mode send 2"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendBroadcast(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 180
    .end local v4    # "listHight":I
    .end local v5    # "listX":I
    .end local v6    # "listY":I
    .end local v8    # "scroolHight":I
    .end local v9    # "tempCur":Landroid/graphics/Bitmap;
    .end local v10    # "tempPre":Landroid/graphics/Bitmap;
    :cond_f
    const-string v12, "com.zte.screenshotmodeover"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 181
    const-string v12, "StaticReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lxg mode receive over cur_mode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/mipop/longscreenshot/StaticReceiver;->cur_mode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->cur_mode:I

    const/4 v13, 0x5

    if-eq v12, v13, :cond_11

    .line 183
    const/4 v12, 0x2

    sput v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->scroolMode:I

    .line 184
    sget v12, Lcom/android/mipop/longscreenshot/StaticReceiver;->mImageNum:I

    const/4 v13, 0x2

    if-le v12, v13, :cond_10

    .line 185
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendOverToast(Landroid/content/Context;)V

    .line 186
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->startShowDialogActivity(Landroid/content/Context;)V

    .line 198
    :goto_1
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    goto/16 :goto_0

    .line 188
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendOverToast(Landroid/content/Context;)V

    .line 189
    sget-object v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    invoke-interface {v12}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 190
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    sput-object v3, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 191
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->showScreenshot(Landroid/content/Context;)V

    goto :goto_1

    .line 194
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->sendOverToast(Landroid/content/Context;)V

    .line 195
    sget-object v12, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addBitmap:Landroid/graphics/Bitmap;

    sput-object v12, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 196
    invoke-direct/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/StaticReceiver;->showScreenshot(Landroid/content/Context;)V

    goto :goto_1

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
