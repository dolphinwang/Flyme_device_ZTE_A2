.class public Lcom/android/fmradio/FmUtils;
.super Ljava/lang/Object;
.source "FmUtils.java"


# static fields
.field private static final CONVERT_RATE:I = 0xa

.field public static final DEFAULT_STATION:I = 0x3e8

.field public static final DEFAULT_STATION_FLOAT:F

.field private static final FM_IS_FIRST_ENTER_STATION_LIST:Ljava/lang/String; = "fm_is_first_enter_station_list"

.field private static final FM_IS_FIRST_TIME_PLAY:Ljava/lang/String; = "fm_is_first_time_play"

.field private static final FM_IS_SPEAKER_MODE:Ljava/lang/String; = "fm_is_speaker_mode"

.field private static final FM_LOCATION_LATITUDE:Ljava/lang/String; = "fm_location_latitude"

.field private static final FM_LOCATION_LONGITUDE:Ljava/lang/String; = "fm_location_longitude"

.field private static final HIGHEST_STATION:I = 0x438

.field public static final LOCATION_DISTANCE_EXCEED:D = 160934.4

.field private static final LOWEST_STATION:I = 0x36b

.field public static final LOW_SPACE_THRESHOLD:J = 0x80000L

.field private static final STEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FmUtils"

.field private static isFileInSdcard:Z

.field private static sIsFmSuspendEnabled:Ljava/lang/Boolean;

.field private static sStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v0

    sput v0, Lcom/android/fmradio/FmUtils;->DEFAULT_STATION_FLOAT:F

    .line 68
    sput-object v1, Lcom/android/fmradio/FmUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    .line 71
    sput-object v1, Lcom/android/fmradio/FmUtils;->sIsFmSuspendEnabled:Ljava/lang/Boolean;

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/fmradio/FmUtils;->isFileInSdcard:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPaddingForString(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const-wide/16 v2, 0xa

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    .line 384
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static computeDecreaseStation(I)I
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 112
    add-int/lit8 v0, p0, -0x1

    .line 113
    .local v0, "result":I
    const/16 v1, 0x36b

    if-ge v0, v1, :cond_0

    .line 114
    const/16 v0, 0x438

    .line 116
    :cond_0
    return v0
.end method

.method public static computeFrequency(I)F
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 138
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static computeIncreaseStation(I)I
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 97
    add-int/lit8 v0, p0, 0x1

    .line 98
    .local v0, "result":I
    const/16 v1, 0x438

    if-le v0, v1, :cond_0

    .line 99
    const/16 v0, 0x36b

    .line 101
    :cond_0
    return v0
.end method

.method public static computeStation(F)I
    .locals 1
    .param p0, "frequency"    # F

    .prologue
    .line 127
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static createNotificationLargeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 320
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x1050005

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    .line 321
    .local v8, "width":I
    const v9, 0x1050006

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v0, v9

    .line 322
    .local v0, "height":I
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 323
    .local v1, "iconLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070028

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 325
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 326
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v8, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 327
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 328
    .local v2, "iconText":Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 329
    .local v3, "isTablet":Z
    const v9, 0x7f0b0001

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 330
    if-eqz v3, :cond_0

    .line 331
    const v9, 0x41766666    # 15.4f

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 335
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070026

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 338
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 337
    invoke-virtual {v2, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 339
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v8, v9

    int-to-double v10, v9

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v5, v10

    .line 340
    .local v5, "left":I
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v0, v9

    int-to-double v10, v9

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v7, v10

    .line 341
    .local v7, "top":I
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v5

    .line 342
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    .line 341
    invoke-virtual {v2, v5, v7, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 343
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v8, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 346
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    .line 347
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 348
    .local v4, "largeIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    .line 349
    return-object v4

    .line 333
    .end local v4    # "largeIcon":Landroid/graphics/Bitmap;
    .end local v5    # "left":I
    .end local v7    # "top":I
    :cond_0
    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method private static ensureStorageManager(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    sget-object v0, Lcom/android/fmradio/FmUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/android/fmradio/FmUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    .line 214
    :cond_0
    return-void
.end method

.method public static formatStation(I)Ljava/lang/String;
    .locals 7
    .param p0, "station"    # I

    .prologue
    .line 149
    int-to-float v2, p0

    const/high16 v3, 0x41200000    # 10.0f

    div-float v0, v2, v3

    .line 150
    .local v0, "frequency":F
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 151
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    .line 150
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method public static getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 161
    invoke-static {p0}, Lcom/android/fmradio/FmUtils;->ensureStorageManager(Landroid/content/Context;)V

    .line 162
    sget-object v5, Lcom/android/fmradio/FmUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 163
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    .line 164
    .local v3, "mUSBVolume":Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .line 165
    .local v2, "mSDCardVolume":Landroid/os/storage/StorageVolume;
    array-length v0, v4

    .line 166
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 175
    if-nez v3, :cond_0

    .line 176
    sget-object v5, Lcom/android/fmradio/FmUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 178
    :cond_0
    const-string v5, "FmUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mUSBVolume="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v5, "FmUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mSDCardVolume="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez v2, :cond_5

    .line 181
    sput-boolean v8, Lcom/android/fmradio/FmUtils;->isFileInSdcard:Z

    .line 182
    if-eqz v3, :cond_4

    .line 183
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 193
    :goto_1
    return-object v5

    .line 167
    :cond_1
    const-string v5, "FmUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "storageVolumeList["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    aget-object v2, v4, v1

    .line 171
    :cond_2
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 172
    aget-object v3, v4, v1

    .line 166
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 187
    :cond_5
    const-string v5, "mounted"

    .line 188
    sget-object v6, Lcom/android/fmradio/FmUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 188
    if-eqz v5, :cond_6

    .line 189
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/fmradio/FmUtils;->isFileInSdcard:Z

    .line 190
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 192
    :cond_6
    sput-boolean v8, Lcom/android/fmradio/FmUtils;->isFileInSdcard:Z

    .line 193
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getDefaultStorageState(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/android/fmradio/FmUtils;->ensureStorageManager(Landroid/content/Context;)V

    .line 206
    sget-object v1, Lcom/android/fmradio/FmUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {p0}, Lcom/android/fmradio/FmUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "state":Ljava/lang/String;
    return-object v0
.end method

.method public static getIsSpeakerModeOnFocusLost(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 397
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "fm_is_speaker_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLastSearchedLocation(Landroid/content/Context;)[D
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 258
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "fm_location_latitude"

    const-string v8, "0.0"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "strLatitude":Ljava/lang/String;
    const-string v7, "fm_location_longitude"

    const-string v8, "0.0"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "strLongitude":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 261
    .local v0, "latitude":D
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 262
    .local v2, "longitude":D
    const/4 v7, 0x2

    new-array v7, v7, [D

    const/4 v8, 0x0

    aput-wide v0, v7, v8

    const/4 v8, 0x1

    aput-wide v2, v7, v8

    return-object v7
.end method

.method public static getPlaylistPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-static {p0}, Lcom/android/fmradio/FmUtils;->ensureStorageManager(Landroid/content/Context;)V

    .line 225
    sget-object v2, Lcom/android/fmradio/FmUtils;->sStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "externalStoragePaths":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Playlists/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "path":Ljava/lang/String;
    return-object v1
.end method

.method public static hasEnoughSpace(Ljava/lang/String;)Z
    .locals 12
    .param p0, "recordingSdcard"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v6, 0x0

    .line 240
    .local v6, "ret":Z
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 241
    .local v5, "fs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 242
    .local v2, "blocks":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v0, v7

    .line 243
    .local v0, "blockSize":J
    mul-long v8, v2, v0

    .line 244
    .local v8, "spaceLeft":J
    const-wide/32 v10, 0x80000

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    const/4 v6, 0x1

    .line 248
    .end local v0    # "blockSize":J
    .end local v2    # "blocks":J
    .end local v5    # "fs":Landroid/os/StatFs;
    .end local v8    # "spaceLeft":J
    :goto_0
    return v6

    .line 244
    .restart local v0    # "blockSize":J
    .restart local v2    # "blocks":J
    .restart local v5    # "fs":Landroid/os/StatFs;
    .restart local v8    # "spaceLeft":J
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 245
    .end local v0    # "blockSize":J
    .end local v2    # "blocks":J
    .end local v5    # "fs":Landroid/os/StatFs;
    .end local v8    # "spaceLeft":J
    :catch_0
    move-exception v4

    .line 246
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "FmUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "hasEnoughSpace, sdcard may be unmounted:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isFileInSdcard()Z
    .locals 1

    .prologue
    .line 415
    sget-boolean v0, Lcom/android/fmradio/FmUtils;->isFileInSdcard:Z

    return v0
.end method

.method public static isFirstEnterStationList(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 303
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "fm_is_first_enter_station_list"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 304
    .local v1, "isFirstEnter":Z
    if-eqz v1, :cond_0

    .line 305
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "fm_is_first_enter_station_list"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v1
.end method

.method public static isFirstTimePlayFm(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 283
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "fm_is_first_time_play"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 284
    .local v0, "isFirstTime":Z
    return v0
.end method

.method public static isFmSuspendSupport()Z
    .locals 2

    .prologue
    .line 357
    sget-object v1, Lcom/android/fmradio/FmUtils;->sIsFmSuspendEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 358
    new-instance v0, Ljava/io/File;

    const-string v1, "sys/power/spm/fm_suspend"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/fmradio/FmUtils;->sIsFmSuspendEnabled:Ljava/lang/Boolean;

    .line 361
    :cond_0
    sget-object v1, Lcom/android/fmradio/FmUtils;->sIsFmSuspendEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static isValidStation(I)Z
    .locals 2
    .param p0, "station"    # I

    .prologue
    .line 85
    const/16 v1, 0x36b

    if-lt p0, v1, :cond_0

    const/16 v1, 0x438

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 86
    .local v0, "isValid":Z
    :goto_0
    return v0

    .line 85
    .end local v0    # "isValid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setIsFirstTimePlayFm(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 293
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fm_is_first_time_play"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method

.method public static setIsSpeakerModeOnFocusLost(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSpeaker"    # Z

    .prologue
    .line 406
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 407
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "fm_is_speaker_mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    return-void
.end method

.method public static setLastSearchedLocation(Landroid/content/Context;DD)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 269
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 270
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "strLatitude":Ljava/lang/String;
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "strLongitude":Ljava/lang/String;
    const-string v4, "fm_location_latitude"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    const-string v4, "fm_location_longitude"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    return-void
.end method

.method public static timeFormat(J)Ljava/lang/String;
    .locals 14
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v12, 0xe10

    const-wide/16 v10, 0x3c

    .line 370
    const-wide/16 v8, 0x3e8

    div-long/2addr p0, v8

    .line 371
    div-long v0, p0, v12

    .line 372
    .local v0, "hour":J
    rem-long/2addr p0, v12

    .line 373
    div-long v2, p0, v10

    .line 374
    .local v2, "min":J
    rem-long v4, p0, v10

    .line 375
    .local v4, "sec":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v6, "timeText":Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/android/fmradio/FmUtils;->addPaddingForString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 377
    invoke-static {v2, v3}, Lcom/android/fmradio/FmUtils;->addPaddingForString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/android/fmradio/FmUtils;->addPaddingForString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
