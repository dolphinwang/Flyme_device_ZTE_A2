.class public Lcom/android/mipop/cropimage/TakePhoto;
.super Ljava/lang/Object;
.source "TakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/cropimage/TakePhoto$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_SAVE_FAIL:I = 0x12c

.field private static final EVENT_SAVE_OK:I = 0x64

.field private static final EVENT_SHARE_OK:I = 0xc8

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.jpg"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field static final STORAGE_WARNING_LONG:J = 0x3200000L

.field public static isTake:Z

.field public static mBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private SaveName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSaveBitmap:Landroid/graphics/Bitmap;

.field private mSaveDialog:Lcom/android/mipop/cropimage/MiProgressDialog;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/cropimage/TakePhoto;->isTake:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->mSaveBitmap:Landroid/graphics/Bitmap;

    .line 64
    iput-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->uri:Landroid/net/Uri;

    .line 67
    iput-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->SaveName:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/cropimage/TakePhoto;->isTake:Z

    .line 73
    new-instance v0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;-><init>(Lcom/android/mipop/cropimage/TakePhoto;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/TakePhoto;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mipop/cropimage/TakePhoto;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/TakePhoto;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->SaveName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/TakePhoto;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mipop/cropimage/TakePhoto;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/cropimage/TakePhoto;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mipop/cropimage/TakePhoto;->uri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/TakePhoto;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->mSaveBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/TakePhoto;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDegreesForRotation(I)F
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 245
    const-string v0, "HouJiong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDegreesForRotation value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    packed-switch p1, :pswitch_data_0

    .line 254
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 248
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 250
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 252
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getScreenshot()Z
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/android/mipop/cropimage/TakePhoto;->isTake:Z

    return v0
.end method

.method public static myScreenshot(II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 191
    const/4 v5, 0x1

    .line 192
    .local v5, "sdkAdvanced":Z
    const/4 v1, 0x0

    .line 193
    .local v1, "SurfaceControl":Ljava/lang/Class;
    const/4 v0, 0x0

    .line 195
    .local v0, "Surface":Ljava/lang/Class;
    :try_start_0
    const-string v7, "android.view.SurfaceControl"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    :goto_0
    :try_start_1
    const-string v7, "android.view.Surface"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 210
    if-eqz v5, :cond_1

    .line 211
    :try_start_2
    const-string v7, "TakePhoto"

    const-string v8, "surface 333 sdkAdvanced == true"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz v1, :cond_0

    .line 213
    const-string v7, "screenshot"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 216
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 240
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_1
    return-object v4

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "TakePhoto"

    const-string v8, "ClassNotFoundException !!!! SurfaceControl"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v5, 0x0

    goto :goto_0

    .line 203
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 204
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "TakePhoto"

    const-string v8, "ClassNotFoundException !!!! Surface  There must be something wrong!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 206
    goto :goto_1

    .line 221
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_3
    const-string v7, "TakePhoto"

    const-string v8, "SurfaceControl == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v4, v6

    .line 240
    goto :goto_1

    .line 224
    :cond_1
    const-string v7, "TakePhoto"

    const-string v8, "surface 333 sdkAdvanced == false"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz v0, :cond_2

    .line 226
    const-string v7, "screenshot"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 229
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 232
    .local v4, "screenBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 234
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_2
    const-string v7, "TakePhoto"

    const-string v8, "Surface == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 237
    :catch_2
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "TakePhoto"

    const-string v8, "surface NoSuchMethodException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private screenshot()V
    .locals 7

    .prologue
    .line 162
    const-string v4, "HouJiong"

    const-string v5, "+++++++++++++++takePhoto  begin++++++++++++++++"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v4, p0, Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 165
    .local v3, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 166
    .local v0, "mDisplay":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 167
    .local v1, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 169
    const-string v4, "HouJiong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widthPixels="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v4, "HouJiong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "heightPixels="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Lcom/android/mipop/cropimage/TakePhoto;->myScreenshot(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    .local v2, "mScreenBitmap":Landroid/graphics/Bitmap;
    const-string v4, "HouJiong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v4, "HouJiong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez v2, :cond_0

    .line 181
    const-string v4, "HouJiong"

    const-string v5, "b1==null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v4, p0, Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;

    const-string v5, "/data/cropimage.jpg"

    invoke-static {v4, v2, v5}, Lcom/android/mipop/cropimage/Until;->saveMyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 186
    const-string v4, "HouJiong"

    const-string v5, "+++++++++++++++takePhoto  end++++++++++++++++"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public Save(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 425
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/mipop/cropimage/MiProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/android/mipop/cropimage/MiProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto;->mSaveDialog:Lcom/android/mipop/cropimage/MiProgressDialog;

    .line 427
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/TakePhoto;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 428
    .local v0, "lAvailableFlash":J
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lxg lAvailableFlash="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-wide/32 v4, 0x3200000

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;

    const v5, 0x7f090570

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 457
    :goto_0
    return-void

    .line 436
    :cond_0
    iput-object p2, p0, Lcom/android/mipop/cropimage/TakePhoto;->mSaveBitmap:Landroid/graphics/Bitmap;

    .line 437
    new-instance v3, Lcom/android/mipop/cropimage/TakePhoto$1;

    invoke-direct {v3, p0}, Lcom/android/mipop/cropimage/TakePhoto$1;-><init>(Lcom/android/mipop/cropimage/TakePhoto;)V

    invoke-virtual {v3}, Lcom/android/mipop/cropimage/TakePhoto$1;->start()V

    .line 447
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 448
    .local v2, "m":Landroid/os/Message;
    const/16 v3, 0x64

    iput v3, v2, Landroid/os/Message;->what:I

    .line 449
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public Share(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mipop/cropimage/MiProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/android/mipop/cropimage/MiProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/TakePhoto;->mSaveDialog:Lcom/android/mipop/cropimage/MiProgressDialog;

    .line 468
    iput-object p2, p0, Lcom/android/mipop/cropimage/TakePhoto;->mSaveBitmap:Landroid/graphics/Bitmap;

    .line 469
    new-instance v0, Lcom/android/mipop/cropimage/TakePhoto$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/TakePhoto$2;-><init>(Lcom/android/mipop/cropimage/TakePhoto;)V

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/TakePhoto$2;->start()V

    .line 491
    return-void
.end method

.method public getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 410
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 411
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 412
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 413
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 414
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public getScreenshotBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 258
    const-string v10, "HouJiong"

    const-string v11, "+++++++++++++++takePhoto  begin++++++++++++++++"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v10, p0, Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 262
    .local v6, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 263
    .local v2, "mDisplay":Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 264
    .local v4, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 266
    const-string v10, "HouJiong"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "widthPixels="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v10, "HouJiong"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "heightPixels="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v10, 0x2

    new-array v1, v10, [F

    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    aput v10, v1, v9

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    aput v10, v1, v8

    .line 272
    .local v1, "dims":[F
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/mipop/cropimage/TakePhoto;->getDegreesForRotation(I)F

    move-result v0

    .line 273
    .local v0, "degrees":F
    const-string v10, "HouJiong"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getScreenshotBitmap degrees="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v10, 0x0

    cmpl-float v10, v0, v10

    if-lez v10, :cond_1

    move v7, v8

    .line 275
    .local v7, "requiresRotation":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 277
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 278
    .local v3, "mDisplayMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 279
    neg-float v10, v0

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 280
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 281
    aget v10, v1, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    aput v10, v1, v9

    .line 282
    aget v10, v1, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    aput v10, v1, v8

    .line 286
    .end local v3    # "mDisplayMatrix":Landroid/graphics/Matrix;
    :cond_0
    aget v9, v1, v9

    float-to-int v9, v9

    aget v8, v1, v8

    float-to-int v8, v8

    invoke-static {v9, v8}, Lcom/android/mipop/cropimage/TakePhoto;->myScreenshot(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 292
    .local v5, "mScreenBitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    .line 293
    const-string v8, "HouJiong"

    const-string v9, "b1==null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v5, 0x0

    .line 307
    .end local v5    # "mScreenBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v5

    .end local v7    # "requiresRotation":Z
    :cond_1
    move v7, v9

    .line 274
    goto :goto_0

    .line 306
    .restart local v5    # "mScreenBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "requiresRotation":Z
    :cond_2
    const-string v8, "HouJiong"

    const-string v9, "+++++++++++++++takePhoto  end++++++++++++++++"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public save(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 314
    .local v18, "mImageTime":J
    new-instance v27, Ljava/text/SimpleDateFormat;

    const-string v28, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v27 .. v28}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v28, Ljava/util/Date;

    move-object/from16 v0, v28

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v27 .. v28}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 315
    .local v12, "imageDate":Ljava/lang/String;
    sget-object v27, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 317
    .local v13, "imageDir":Ljava/lang/String;
    const v27, 0x7f090583

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 318
    .local v22, "toastImageDir":Ljava/lang/String;
    const v27, 0x7f09056a

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 319
    .local v24, "toastImageDirPictures":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 320
    .local v23, "toastImageDirAll":Ljava/lang/String;
    const-string v27, "Screenshot_%s.jpg"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v12, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 321
    .local v14, "mImageFileName":Ljava/lang/String;
    const-string v27, "%s/%s/%s"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v13, v28, v29

    const/16 v29, 0x1

    const-string v30, "Screenshots"

    aput-object v30, v28, v29

    const/16 v29, 0x2

    aput-object v14, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 323
    .local v15, "mImageFilePath":Ljava/lang/String;
    const-string v27, "%s/%s/%s"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v23, v28, v29

    const/16 v29, 0x1

    const-string v30, "Screenshots"

    aput-object v30, v28, v29

    const/16 v29, 0x2

    aput-object v14, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 325
    .local v16, "mImageFilePathToast":Ljava/lang/String;
    const-string v27, "screenshot"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "screenshot imageDir == "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v27, "screenshot"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "screenshot mImageFilePath == "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v27, "screenshot"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "screenshot mImageFilePathToast == "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mipop/cropimage/TakePhoto;->SaveName:Ljava/lang/String;

    .line 329
    new-instance v8, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/Screenshots"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v8, "dir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_0

    .line 332
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 333
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v5, "contentValues":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 335
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    const-string v27, "format"

    const/16 v28, 0x3001

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v27, "_data"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/Screenshots"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v27, "content://media/external/file"

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 338
    .local v21, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 340
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v5    # "contentValues":Landroid/content/ContentValues;
    .end local v21    # "tableUri":Landroid/net/Uri;
    :cond_0
    const/16 v25, 0x0

    .line 363
    .local v25, "uri":Landroid/net/Uri;
    :try_start_0
    new-instance v9, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/Screenshots"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v9, "dirFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_1

    .line 365
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 367
    :cond_1
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v11, "fileX":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 369
    const-string v27, "heart"

    const-string v28, "heart fileX.exists()"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_2
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 372
    .local v17, "out":Ljava/io/OutputStream;
    sget-object v27, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v28, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 373
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 374
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 376
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v26, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 378
    .local v20, "resolver":Landroid/content/ContentResolver;
    const-string v27, "_data"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v27, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v27, "_display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v27, "datetaken"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    const-wide/16 v28, 0x3e8

    div-long v6, v18, v28

    .line 383
    .local v6, "dateSeconds":J
    const-string v27, "date_added"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    const-string v27, "date_modified"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    const-string v27, "mime_type"

    const-string v28, "image/jpeg"

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v27, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v27, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string v27, ""

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "lxg image.getHeight() = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",image.getWidth() = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v27, "_size"

    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->length()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    sget-object v27, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 396
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v6    # "dateSeconds":J
    .end local v9    # "dirFile":Ljava/io/File;
    .end local v11    # "fileX":Ljava/io/File;
    .end local v17    # "out":Ljava/io/OutputStream;
    .end local v20    # "resolver":Landroid/content/ContentResolver;
    .end local v26    # "values":Landroid/content/ContentValues;
    :goto_0
    const-string v27, "HouJiong"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "uri="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-object v25

    .line 398
    :catch_0
    move-exception v10

    .line 399
    .local v10, "e":Ljava/lang/Exception;
    const/16 v25, 0x0

    .line 400
    const-string v27, "HouJiong"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v27, "heart"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/TakePhoto;->getScreenshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 152
    return-void
.end method
