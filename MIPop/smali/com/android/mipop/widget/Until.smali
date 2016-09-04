.class public Lcom/android/mipop/widget/Until;
.super Ljava/lang/Object;
.source "Until.java"


# static fields
.field public static AREA_CHANGED_LINE_LEFT:I

.field public static AREA_CHANGED_LINE_RIGHT:I

.field public static AREA_CHANGED_WIDTH:I

.field public static BOTTOM_LINE:I

.field public static EXPEND_LINE:I

.field public static EXPEND_LINE_RIGHT:I

.field public static EXPEND_OFFSET:I

.field public static GLOBAL_ACTION_MIPOP_CHANGED:Ljava/lang/String;

.field public static IMAGE_WIDTH:I

.field public static MID_LINE:I

.field public static MIPOP_PREFERENCES:Ljava/lang/String;

.field public static MOVE_MAX_SIZE:I

.field public static PARKING_LINE:I

.field public static PARKING_LINE_RIGHT:I

.field public static SCREEM_HEIGHT:I

.field public static SCREEM_WIDTH:I

.field public static SHRINK_LINE:I

.field public static STATUS_FULLSCREEN_CHANGED:Ljava/lang/String;

.field public static STATUS_HEIGHT:I

.field public static STATUS_MIPOP_CHANGED:Ljava/lang/String;

.field public static WIDGET_FULL_STATUS_CHANGED:Ljava/lang/String;

.field public static WIDGET_MIPOP_STATUS_CHANGED:Ljava/lang/String;

.field private static area_changed_factor:F

.field private static expend_offset_factor:I

.field public static iconId:[I

.field private static image_height_factor:I

.field public static keyNoPressIconId:[I

.field public static keyPressIconId:[I

.field public static listIconId:[I

.field private static mid_line_factor:I

.field private static move_max_factor:I

.field private static parking_factor:F

.field private static shrink_factor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/16 v4, 0xa

    .line 42
    const/4 v0, 0x7

    sput v0, Lcom/android/mipop/widget/Until;->image_height_factor:I

    .line 45
    const/4 v0, 0x5

    sput v0, Lcom/android/mipop/widget/Until;->move_max_factor:I

    .line 48
    sput v1, Lcom/android/mipop/widget/Until;->mid_line_factor:I

    .line 51
    sput v4, Lcom/android/mipop/widget/Until;->expend_offset_factor:I

    .line 54
    sput v1, Lcom/android/mipop/widget/Until;->shrink_factor:I

    .line 57
    const v0, 0x3f34fdf4    # 0.707f

    sput v0, Lcom/android/mipop/widget/Until;->parking_factor:F

    .line 60
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/android/mipop/widget/Until;->area_changed_factor:F

    .line 63
    const/16 v0, 0x1e0

    sput v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 66
    const/16 v0, 0x348

    sput v0, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    .line 69
    sput v4, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    .line 72
    const-string v0, "widgetMipopStatusChanged"

    sput-object v0, Lcom/android/mipop/widget/Until;->WIDGET_MIPOP_STATUS_CHANGED:Ljava/lang/String;

    .line 73
    const-string v0, "widgetFullStatusChanged"

    sput-object v0, Lcom/android/mipop/widget/Until;->WIDGET_FULL_STATUS_CHANGED:Ljava/lang/String;

    .line 74
    const-string v0, "globalActionMipopChanged"

    sput-object v0, Lcom/android/mipop/widget/Until;->GLOBAL_ACTION_MIPOP_CHANGED:Ljava/lang/String;

    .line 75
    const-string v0, "statusbarMipopStateChanged"

    sput-object v0, Lcom/android/mipop/widget/Until;->STATUS_MIPOP_CHANGED:Ljava/lang/String;

    .line 76
    const-string v0, "statusbarFullscreenChanged"

    sput-object v0, Lcom/android/mipop/widget/Until;->STATUS_FULLSCREEN_CHANGED:Ljava/lang/String;

    .line 77
    const-string v0, "com.android.mipop_preferences"

    sput-object v0, Lcom/android/mipop/widget/Until;->MIPOP_PREFERENCES:Ljava/lang/String;

    .line 81
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->image_height_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    .line 85
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->mid_line_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->MID_LINE:I

    .line 90
    sget v0, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->move_max_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    .line 97
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/mipop/widget/Until;->area_changed_factor:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/mipop/widget/Until;->AREA_CHANGED_WIDTH:I

    .line 101
    sget v0, Lcom/android/mipop/widget/Until;->AREA_CHANGED_WIDTH:I

    sput v0, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    .line 105
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->AREA_CHANGED_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    .line 110
    sget v0, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->expend_offset_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->EXPEND_OFFSET:I

    .line 113
    const-wide v0, 0x3ff69fbe76c8b439L    # 1.414

    sget v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_OFFSET:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    .line 119
    sget v0, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->shrink_factor:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    .line 124
    sget v0, Lcom/android/mipop/widget/Until;->parking_factor:F

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    .line 128
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->EXPEND_LINE_RIGHT:I

    .line 132
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->PARKING_LINE_RIGHT:I

    .line 139
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    sget v1, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/widget/Until;->BOTTOM_LINE:I

    .line 141
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mipop/widget/Until;->iconId:[I

    .line 147
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mipop/widget/Until;->listIconId:[I

    .line 153
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    .line 160
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mipop/widget/Until;->keyPressIconId:[I

    return-void

    .line 141
    :array_0
    .array-data 4
        0x7f0206e7
        0x7f0206b9
        0x7f02076d
        0x7f0206fc
        0x7f0206c5
        0x7f020706
        0x7f02077d
        0x7f020772
        0x7f020768
        0x7f020700
    .end array-data

    .line 147
    :array_1
    .array-data 4
        0x7f0206e8
        0x7f0206ba
        0x7f02076e
        0x7f0206fd
        0x7f0206c6
        0x7f020707
        0x7f02077e
        0x7f020773
        0x7f020769
        0x7f020701
    .end array-data

    .line 153
    :array_2
    .array-data 4
        0x7f0206e9
        0x7f0206bb
        0x7f02076f
        0x7f0206fe
        0x7f0206c7
        0x7f020708
        0x7f02077f
        0x7f020774
        0x7f02076a
        0x7f020702
    .end array-data

    .line 160
    :array_3
    .array-data 4
        0x7f0206ea
        0x7f0206bc
        0x7f020770
        0x7f0206ff
        0x7f0206c8
        0x7f020709
        0x7f020780
        0x7f020775
        0x7f02076b
        0x7f020703
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTopActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 348
    .local v0, "manager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 349
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    .line 350
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 352
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 169
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 172
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    .line 174
    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 175
    .local v1, "x":I
    mul-int/lit8 v2, v1, 0x7d

    div-int/lit16 v2, v2, 0x2d0

    sput v2, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    .line 176
    return-void
.end method

.method public static initialPop(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 191
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 192
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 193
    .local v1, "realSize":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 194
    iget v4, v1, Landroid/graphics/Point;->y:I

    sput v4, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    .line 195
    iget v4, v1, Landroid/graphics/Point;->x:I

    sput v4, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 196
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lxg initialPop SCREEM_HEIGHT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",SCREEM_WIDTH = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p0}, Lcom/android/mipop/widget/Until;->setStatusBarHeight(Landroid/content/Context;)V

    .line 201
    sget v4, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v5, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 202
    .local v3, "x":I
    sget v4, Lcom/android/mipop/widget/Until;->image_height_factor:I

    div-int v4, v3, v4

    sput v4, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    .line 203
    sget v4, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v5, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/mipop/widget/Until;->mid_line_factor:I

    div-int/2addr v4, v5

    sput v4, Lcom/android/mipop/widget/Until;->MID_LINE:I

    .line 204
    sget v4, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v5, Lcom/android/mipop/widget/Until;->move_max_factor:I

    div-int/2addr v4, v5

    sput v4, Lcom/android/mipop/widget/Until;->MOVE_MAX_SIZE:I

    .line 205
    sget v4, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v5, Lcom/android/mipop/widget/Until;->expend_offset_factor:I

    div-int/2addr v4, v5

    sput v4, Lcom/android/mipop/widget/Until;->EXPEND_OFFSET:I

    .line 206
    const-wide v4, 0x3ff69fbe76c8b439L    # 1.414

    sget v6, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sget v5, Lcom/android/mipop/widget/Until;->EXPEND_OFFSET:I

    add-int/2addr v4, v5

    sput v4, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    .line 207
    sget v4, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sget v5, Lcom/android/mipop/widget/Until;->shrink_factor:I

    div-int/2addr v4, v5

    sput v4, Lcom/android/mipop/widget/Until;->SHRINK_LINE:I

    .line 208
    sget v4, Lcom/android/mipop/widget/Until;->parking_factor:F

    sget v5, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    .line 209
    sget v4, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    sget v5, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int/2addr v4, v5

    sput v4, Lcom/android/mipop/widget/Until;->BOTTOM_LINE:I

    .line 211
    sget v4, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v5, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/mipop/widget/Until;->EXPEND_LINE:I

    sub-int/2addr v4, v5

    sput v4, Lcom/android/mipop/widget/Until;->EXPEND_LINE_RIGHT:I

    .line 212
    sget v4, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v5, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/mipop/widget/Until;->PARKING_LINE:I

    sub-int/2addr v4, v5

    sput v4, Lcom/android/mipop/widget/Until;->PARKING_LINE_RIGHT:I

    .line 214
    sget v4, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v5, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/android/mipop/widget/Until;->area_changed_factor:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/android/mipop/widget/Until;->AREA_CHANGED_WIDTH:I

    .line 215
    sget v4, Lcom/android/mipop/widget/Until;->AREA_CHANGED_WIDTH:I

    sput v4, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_LEFT:I

    .line 216
    sget v4, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    sget v5, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/mipop/widget/Until;->AREA_CHANGED_WIDTH:I

    sub-int/2addr v4, v5

    sput v4, Lcom/android/mipop/widget/Until;->AREA_CHANGED_LINE_RIGHT:I

    .line 219
    return-void
.end method

.method private static setStatusBarHeight(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 232
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 233
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 235
    .local v4, "x":I
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 237
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    .line 240
    const-string v5, "BAR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sbar = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/mipop/widget/Until;->STATUS_HEIGHT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e1":Ljava/lang/Exception;
    const-string v5, "BAR"

    const-string v6, "get status bar height fail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startAction(Landroid/content/Context;I)V
    .locals 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # I

    .prologue
    .line 248
    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lxg key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    packed-switch p1, :pswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    :try_start_0
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    .line 253
    .local v3, "inst":Landroid/app/Instrumentation;
    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v3    # "inst":Landroid/app/Instrumentation;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "lxg"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    .line 261
    .restart local v3    # "inst":Landroid/app/Instrumentation;
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 262
    .end local v3    # "inst":Landroid/app/Instrumentation;
    :catch_1
    move-exception v1

    .line 263
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "lxg"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string v11, "statusbar"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    .line 270
    .local v7, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v7, :cond_0

    .line 272
    const/4 v11, 0x0

    :try_start_2
    invoke-interface {v7, v11}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V

    .line 273
    invoke-interface {v7}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 274
    :catch_2
    move-exception v1

    .line 275
    .local v1, "e":Landroid/os/RemoteException;
    const-string v11, "Input"

    const-string v12, "DeadOjbectException"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v7    # "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :pswitch_3
    :try_start_3
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    .line 282
    .restart local v3    # "inst":Landroid/app/Instrumentation;
    const/16 v11, 0x1a

    invoke-virtual {v3, v11}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 283
    .end local v3    # "inst":Landroid/app/Instrumentation;
    :catch_3
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "shenzhan"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_4
    const/4 v5, 0x0

    .line 289
    .local v5, "isLauncher":I
    invoke-static {p0}, Lcom/android/mipop/widget/Until;->getTopActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "activityTop":Ljava/lang/String;
    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lxg meterbase activityTop = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v11, "com.zte.mifavor.launcher"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "com.android.mipop"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "com.android.launcher3"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 294
    :cond_1
    const/4 v5, 0x1

    .line 296
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.CropImage"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v11, "isLauncher"

    invoke-virtual {v4, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 303
    .end local v0    # "activityTop":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "isLauncher":I
    :pswitch_5
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 305
    .local v6, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 306
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 307
    :cond_3
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 308
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 309
    :cond_4
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-nez v11, :cond_0

    .line 310
    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 314
    .end local v6    # "mAudioManager":Landroid/media/AudioManager;
    :pswitch_6
    const-string v11, "statusbar"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    .line 315
    .local v9, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v9}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    goto/16 :goto_0

    .line 318
    .end local v9    # "sbm":Landroid/app/StatusBarManager;
    :pswitch_7
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.REBOOT"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v8, "reboot":Landroid/content/Intent;
    const-string v11, "android.intent.extra.KEY_CONFIRM"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    const/high16 v11, 0x10000000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 324
    .end local v8    # "reboot":Landroid/content/Intent;
    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    const-string v11, "zte.com.cn.emode.action.SHUT_DOWN"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 326
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v10, "shutdown":Landroid/content/Intent;
    const-string v11, "android.intent.extra.KEY_CONFIRM"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    const/high16 v11, 0x10000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 333
    .end local v2    # "i":Landroid/content/Intent;
    .end local v10    # "shutdown":Landroid/content/Intent;
    :pswitch_9
    :try_start_4
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    .line 334
    .restart local v3    # "inst":Landroid/app/Instrumentation;
    const/16 v11, 0x52

    invoke-virtual {v3, v11}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 335
    .end local v3    # "inst":Landroid/app/Instrumentation;
    :catch_4
    move-exception v1

    .line 336
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "lxg"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
