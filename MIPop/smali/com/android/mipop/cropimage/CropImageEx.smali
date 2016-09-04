.class public Lcom/android/mipop/cropimage/CropImageEx;
.super Landroid/app/Activity;
.source "CropImageEx.java"


# static fields
.field private static final EVENT_CANCLE_20SECOND:I = 0x1

.field private static final EVENT_SAVE_3SECOND:I

.field private static final EVT_SCROLL_SCREENSHOT:I

.field private static final MS_HANDLE_DELAY:I

.field public static bitmapForPaint:Landroid/graphics/Bitmap;


# instance fields
.field private bottomBtns:Landroid/widget/LinearLayout;

.field bottomButtOnClickListener:Landroid/view/View$OnClickListener;

.field private btnCancel:Landroid/widget/Button;

.field private btnCapture:Landroid/widget/Button;

.field private btnCaptureButton1:Landroid/widget/Button;

.field private btnCaptureButton2:Landroid/widget/Button;

.field private btnCaptureTextview:Landroid/widget/TextView;

.field private btnOval:Landroid/widget/Button;

.field private btnPaint:Landroid/widget/Button;

.field private btnPath:Landroid/widget/Button;

.field private btnRect:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private btnShare:Landroid/widget/Button;

.field private cropView:Lcom/android/mipop/cropimage/CropView;

.field private fromMIPop:Z

.field private full:Z

.field private lastShape:Landroid/widget/Button;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCancleHandler:Landroid/os/Handler;

.field private mCropOval:Lcom/android/mipop/cropimage/CropOval;

.field private mCropPath:Lcom/android/mipop/cropimage/CropPath;

.field private mCropRect:Lcom/android/mipop/cropimage/CropRect;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollHandler:Landroid/os/Handler;

.field private menu:Landroid/widget/ImageView;

.field menuClickListener:Landroid/view/View$OnClickListener;

.field private menuContent:Landroid/widget/LinearLayout;

.field private mp:Landroid/media/MediaPlayer;

.field shapeButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->fromMIPop:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->full:Z

    .line 84
    new-instance v0, Lcom/android/mipop/cropimage/CropImageEx$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/CropImageEx$1;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/android/mipop/cropimage/CropImageEx$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/CropImageEx$2;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mCancleHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/android/mipop/cropimage/CropImageEx$3;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/CropImageEx$3;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    new-instance v0, Lcom/android/mipop/cropimage/CropImageEx$5;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/CropImageEx$5;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 324
    new-instance v0, Lcom/android/mipop/cropimage/CropImageEx$6;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/CropImageEx$6;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mScrollHandler:Landroid/os/Handler;

    .line 340
    new-instance v0, Lcom/android/mipop/cropimage/CropImageEx$7;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/CropImageEx$7;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->bottomButtOnClickListener:Landroid/view/View$OnClickListener;

    .line 392
    new-instance v0, Lcom/android/mipop/cropimage/CropImageEx$8;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/CropImageEx$8;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->shapeButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/cropimage/CropImageEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropImageEx;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropOval;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mCropOval:Lcom/android/mipop/cropimage/CropOval;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropPath;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mCropPath:Lcom/android/mipop/cropimage/CropPath;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->menuContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->bottomBtns:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mipop/cropimage/CropImageEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropImageEx;->onShareClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mCancleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mScrollHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mipop/cropimage/CropImageEx;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropRect;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/CropImageEx;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mCropRect:Lcom/android/mipop/cropimage/CropRect;

    return-object v0
.end method

.method private fixBitmap()V
    .locals 6

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v1, "ca":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 131
    .local v2, "m":Landroid/graphics/Matrix;
    const/high16 v3, 0x42b40000    # 90.0f

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 133
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 134
    iget-object v3, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    iput-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    .line 137
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "ca":Landroid/graphics/Canvas;
    .end local v2    # "m":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method private onSaveClicked()V
    .locals 3

    .prologue
    .line 464
    const-string v1, ""

    const-string v2, "lxg btn_cancel onSaveClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v0, Lcom/android/mipop/cropimage/TakePhoto;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 466
    .local v0, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    invoke-virtual {v1}, Lcom/android/mipop/cropimage/CropView;->crop()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/mipop/cropimage/TakePhoto;->Save(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 467
    return-void
.end method

.method private onShareClicked()V
    .locals 2

    .prologue
    .line 456
    new-instance v0, Lcom/android/mipop/cropimage/TakePhoto;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 457
    .local v0, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    invoke-virtual {v1}, Lcom/android/mipop/cropimage/CropView;->crop()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/mipop/cropimage/TakePhoto;->Share(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 461
    return-void
.end method

.method private playSound()V
    .locals 10

    .prologue
    .line 436
    const-string v0, ""

    const-string v1, "lxg playSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "camera_shot01.ogg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 440
    .local v8, "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 442
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 443
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 445
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 453
    .end local v8    # "fileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v7

    .line 447
    .local v7, "ex":Ljava/io/IOException;
    const-string v0, ""

    const-string v1, "playAlert IOException "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 449
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, ""

    const-string v1, "playAlert IllegalArgumentException "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 451
    .local v9, "ie":Ljava/lang/IllegalStateException;
    const-string v0, ""

    const-string v1, "playAlert IllegalStateException "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 148
    .local v13, "win":Landroid/view/Window;
    const/high16 v14, 0x80000

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    if-nez v14, :cond_5

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->fromMIPop:Z

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "isLongScreenshot"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 154
    .local v8, "isLongScreenshot":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "isLauncher"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 155
    .local v7, "isLauncher":I
    const-string v14, ""

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "lxg CropImageEx isLongScreenshot = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",isLauncher = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static/range {p0 .. p0}, Lcom/zte/mifavor/settings/MfConfig;->getInstance(Landroid/content/Context;)Lcom/zte/mifavor/settings/MfConfig;

    move-result-object v14

    const-string v15, "mipop_voice"

    invoke-virtual {v14, v15}, Lcom/zte/mifavor/settings/MfConfig;->isConfiged(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 158
    const-string v14, ""

    const-string v15, "lxg onCreate"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v14, Landroid/media/MediaPlayer;

    invoke-direct {v14}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->mp:Landroid/media/MediaPlayer;

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->playSound()V

    .line 165
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->fromMIPop:Z

    if-nez v14, :cond_a

    const/4 v14, 0x1

    if-eq v8, v14, :cond_a

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "backuri"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    if-eqz v14, :cond_8

    .line 169
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 171
    .local v6, "h":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 173
    .local v12, "w":I
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "backuri"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 176
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 178
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v14, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 180
    invoke-virtual {v3, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 183
    iget v2, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 184
    .local v2, "bw":I
    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 185
    .local v1, "bh":I
    if-gt v2, v12, :cond_1

    if-le v1, v6, :cond_7

    .line 186
    :cond_1
    if-le v2, v1, :cond_6

    .line 187
    div-int v14, v2, v6

    div-int v15, v1, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 192
    :goto_1
    const/4 v14, 0x0

    iput-boolean v14, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 193
    invoke-virtual {v3, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .end local v1    # "bh":I
    .end local v2    # "bw":I
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "h":I
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "w":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->full:Z

    if-nez v14, :cond_c

    .line 235
    const v14, 0x7f030067

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->setContentView(I)V

    .line 239
    :goto_3
    new-instance v14, Lcom/android/mipop/cropimage/CropRect;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mipop/cropimage/CropRect;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->mCropRect:Lcom/android/mipop/cropimage/CropRect;

    .line 240
    new-instance v14, Lcom/android/mipop/cropimage/CropOval;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mipop/cropimage/CropOval;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->mCropOval:Lcom/android/mipop/cropimage/CropOval;

    .line 241
    new-instance v14, Lcom/android/mipop/cropimage/CropPath;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mipop/cropimage/CropPath;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->mCropPath:Lcom/android/mipop/cropimage/CropPath;

    .line 242
    const v14, 0x7f0600cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/mipop/cropimage/CropView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    .line 243
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->full:Z

    if-nez v14, :cond_d

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Lcom/android/mipop/cropimage/CropView;->setPadding(I)V

    .line 250
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->fixBitmap()V

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v15}, Lcom/android/mipop/cropimage/CropView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->mCropRect:Lcom/android/mipop/cropimage/CropRect;

    invoke-virtual {v14, v15}, Lcom/android/mipop/cropimage/CropView;->setCropType(Lcom/android/mipop/cropimage/ICrop;)V

    .line 254
    const v14, 0x7f0600d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->menu:Landroid/widget/ImageView;

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->menu:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v14, 0x7f0600d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->menuContent:Landroid/widget/LinearLayout;

    .line 257
    const v14, 0x7f0600cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->bottomBtns:Landroid/widget/LinearLayout;

    .line 258
    const v14, 0x7f0600ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCancel:Landroid/widget/Button;

    .line 259
    const v14, 0x7f0600cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnSave:Landroid/widget/Button;

    .line 260
    const v14, 0x7f0600d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCapture:Landroid/widget/Button;

    .line 261
    const v14, 0x7f0600d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCaptureTextview:Landroid/widget/TextView;

    .line 262
    const v14, 0x7f0600d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCaptureButton1:Landroid/widget/Button;

    .line 263
    const v14, 0x7f0600da

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCaptureButton2:Landroid/widget/Button;

    .line 264
    const v14, 0x7f0600d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnPaint:Landroid/widget/Button;

    .line 265
    const v14, 0x7f0600d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnShare:Landroid/widget/Button;

    .line 266
    const v14, 0x7f0600d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnRect:Landroid/widget/Button;

    .line 267
    const v14, 0x7f0600d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnOval:Landroid/widget/Button;

    .line 268
    const v14, 0x7f0600d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnPath:Landroid/widget/Button;

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnRect:Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setSelected(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 272
    const-string v14, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/KeyguardManager;

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    .line 274
    .local v4, "deviceLocked":Z
    if-nez v4, :cond_2

    const/4 v14, 0x1

    if-eq v7, v14, :cond_2

    const/4 v14, 0x1

    if-eq v8, v14, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-eqz v14, :cond_3

    .line 276
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCapture:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCaptureTextview:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCaptureButton1:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCaptureButton2:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCancel:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->bottomButtOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnSave:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->bottomButtOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnPaint:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->bottomButtOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnShare:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->bottomButtOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnCapture:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->bottomButtOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnRect:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->shapeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnOval:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->shapeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->btnPath:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mipop/cropimage/CropImageEx;->shapeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->full:Z

    if-eqz v14, :cond_4

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    new-instance v15, Lcom/android/mipop/cropimage/CropImageEx$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/mipop/cropimage/CropImageEx$4;-><init>(Lcom/android/mipop/cropimage/CropImageEx;)V

    invoke-virtual {v14, v15}, Lcom/android/mipop/cropimage/CropView;->setOnSingleClickListener(Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;)V

    .line 308
    .end local v4    # "deviceLocked":Z
    :cond_4
    :goto_5
    return-void

    .line 150
    .end local v7    # "isLauncher":I
    .end local v8    # "isLongScreenshot":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "frommipop"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    goto/16 :goto_0

    .line 189
    .restart local v1    # "bh":I
    .restart local v2    # "bw":I
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "h":I
    .restart local v7    # "isLauncher":I
    .restart local v8    # "isLongScreenshot":I
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v12    # "w":I
    :cond_6
    :try_start_2
    div-int v14, v2, v12

    div-int v15, v1, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 201
    .end local v1    # "bh":I
    .end local v2    # "bw":I
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "h":I
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "w":I
    :catch_0
    move-exception v5

    .line 202
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v14, "csx"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/16 v14, 0x64

    const/16 v15, 0x64

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 231
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 232
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v14, "csx"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 197
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "bh":I
    .restart local v2    # "bw":I
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "h":I
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v12    # "w":I
    :cond_7
    const/4 v14, 0x0

    :try_start_4
    iput-boolean v14, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 198
    invoke-virtual {v3, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 208
    .end local v1    # "bh":I
    .end local v2    # "bw":I
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "h":I
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "w":I
    :cond_8
    :try_start_5
    const-string v14, "csx"

    const-string v15, "lxg nouri?"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v14, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_9

    .line 210
    new-instance v10, Lcom/android/mipop/cropimage/TakePhoto;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 211
    .local v10, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    invoke-virtual {v10}, Lcom/android/mipop/cropimage/TakePhoto;->start()V

    .line 213
    .end local v10    # "tp":Lcom/android/mipop/cropimage/TakePhoto;
    :cond_9
    sget-object v14, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 221
    :cond_a
    sget-object v14, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_b

    .line 222
    const-string v14, ""

    const-string v15, "lxg TakePhoto.mBitmap == null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const v14, 0x7f090584

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/mipop/cropimage/CropImageEx;->finish()V

    goto/16 :goto_5

    .line 229
    :cond_b
    sget-object v14, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 237
    :cond_c
    const v14, 0x7f030066

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mipop/cropimage/CropImageEx;->setContentView(I)V

    goto/16 :goto_3

    .line 246
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/mipop/cropimage/CropView;->setPadding(I)V

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 494
    const-string v1, ""

    const-string v2, "lxg onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/CropImageEx;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 496
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    invoke-static {p0}, Lcom/zte/mifavor/settings/MfConfig;->getInstance(Landroid/content/Context;)Lcom/zte/mifavor/settings/MfConfig;

    move-result-object v1

    const-string v2, "mipop_voice"

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/settings/MfConfig;->isConfiged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 499
    const-string v1, ""

    const-string v2, "lxg onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 501
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 502
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx;->mp:Landroid/media/MediaPlayer;

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 508
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "full_fcreen_shot_clicked"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 510
    return-void
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 471
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 472
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 473
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 475
    .local v2, "mPreference":Landroid/content/SharedPreferences;
    const-string v4, "screen_shot_first_in"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 477
    .local v3, "mfirstIn":Z
    const-string v4, "huangwei"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mfirstIn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-nez v3, :cond_0

    .line 480
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/mipop/api/MyApplication;->showSmartRemindDialog(I)V

    .line 484
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 486
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "screen_shot_first_in"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 489
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropImageEx;->finish()V

    .line 490
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 426
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;

    invoke-virtual {v2}, Lcom/android/mipop/cropimage/CropView;->postInvalidate()V

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.cancel.3second"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/mipop/cropimage/CropImageEx;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 430
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 431
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 432
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 433
    return-void
.end method
