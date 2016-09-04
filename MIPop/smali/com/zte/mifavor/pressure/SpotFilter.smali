.class public Lcom/zte/mifavor/pressure/SpotFilter;
.super Ljava/lang/Object;
.source "SpotFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;,
        Lcom/zte/mifavor/pressure/SpotFilter$PressureState;,
        Lcom/zte/mifavor/pressure/SpotFilter$Spot;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$zte$mifavor$pressure$SpotFilter$PressureState:[I = null

.field static final LIGHT_PRESS:F = 0.5f

.field static final WEIGHT_PRESS:F = 0.9f


# instance fields
.field private mBufSize:I

.field private mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

.field private mLightTime:J

.field private mMinDuration:I

.field private mOldState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

.field private mPosDecay:F

.field private mPreSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

.field private mPressureDecay:F

.field private mSpots:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/zte/mifavor/pressure/SpotFilter$Spot;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

.field private tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;


# direct methods
.method static synthetic $SWITCH_TABLE$com$zte$mifavor$pressure$SpotFilter$PressureState()[I
    .locals 3

    .prologue
    .line 9
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter;->$SWITCH_TABLE$com$zte$mifavor$pressure$SpotFilter$PressureState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->values()[Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-virtual {v1}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-virtual {v1}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-virtual {v1}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-virtual {v1}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-virtual {v1}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/zte/mifavor/pressure/SpotFilter;->$SWITCH_TABLE$com$zte$mifavor$pressure$SpotFilter$PressureState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(IFFLcom/zte/mifavor/pressure/SpotFilter$PressureCallback;)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "posDecay"    # F
    .param p3, "pressureDecay"    # F
    .param p4, "callback"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    .prologue
    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 64
    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mOldState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 75
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    .line 76
    iput p1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mBufSize:I

    .line 77
    iput-object p4, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    .line 78
    cmpl-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    .end local p2    # "posDecay":F
    :goto_0
    iput p2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPosDecay:F

    .line 79
    cmpl-float v1, p3, v2

    if-ltz v1, :cond_1

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_1

    .end local p3    # "pressureDecay":F
    :goto_1
    iput p3, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPressureDecay:F

    .line 80
    return-void

    .restart local p2    # "posDecay":F
    .restart local p3    # "pressureDecay":F
    :cond_0
    move p2, v0

    .line 78
    goto :goto_0

    .end local p2    # "posDecay":F
    :cond_1
    move p3, v0

    .line 79
    goto :goto_1
.end method

.method private filteredOutput(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)Lcom/zte/mifavor/pressure/SpotFilter$Spot;
    .locals 18
    .param p1, "out"    # Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance p1, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .end local p1    # "out":Lcom/zte/mifavor/pressure/SpotFilter$Spot;
    invoke-direct/range {p1 .. p1}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>()V

    .line 188
    .restart local p1    # "out":Lcom/zte/mifavor/pressure/SpotFilter$Spot;
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    .local v9, "wi":F
    const/4 v5, 0x0

    .line 189
    .local v5, "w":F
    const/high16 v10, 0x3f800000    # 1.0f

    .local v10, "wi_press":F
    const/4 v8, 0x0

    .line 190
    .local v8, "w_press":F
    const/4 v11, 0x0

    .local v11, "x":F
    const/4 v12, 0x0

    .local v12, "y":F
    const/4 v3, 0x0

    .local v3, "pressure":F
    const/4 v4, 0x0

    .line 191
    .local v4, "size":F
    const-wide/16 v6, 0x0

    .line 192
    .local v6, "time":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v13, v13, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mAction:I

    move-object/from16 v0, p1

    iput v13, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mAction:I

    .line 206
    :cond_1
    div-float v13, v11, v5

    move-object/from16 v0, p1

    iput v13, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mX:F

    .line 207
    div-float v13, v12, v5

    move-object/from16 v0, p1

    iput v13, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mY:F

    .line 208
    div-float v13, v3, v8

    move-object/from16 v0, p1

    iput v13, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    .line 209
    div-float v13, v4, v8

    move-object/from16 v0, p1

    iput v13, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mSize:F

    .line 210
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    .line 211
    return-object p1

    .line 192
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .line 193
    .local v2, "pi":Lcom/zte/mifavor/pressure/SpotFilter$Spot;
    iget v14, v2, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mX:F

    mul-float/2addr v14, v9

    add-float/2addr v11, v14

    .line 194
    iget v14, v2, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mY:F

    mul-float/2addr v14, v9

    add-float/2addr v12, v14

    .line 195
    long-to-float v14, v6

    iget-wide v0, v2, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v15, v0

    mul-float/2addr v15, v9

    add-float/2addr v14, v15

    float-to-long v6, v14

    .line 196
    iget v14, v2, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    mul-float/2addr v14, v10

    add-float/2addr v3, v14

    .line 197
    iget v14, v2, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mSize:F

    mul-float/2addr v14, v10

    add-float/2addr v4, v14

    .line 198
    add-float/2addr v5, v9

    .line 199
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/pressure/SpotFilter;->mPosDecay:F

    mul-float/2addr v9, v14

    .line 200
    add-float/2addr v8, v10

    .line 201
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/pressure/SpotFilter;->mPressureDecay:F

    mul-float/2addr v10, v14

    goto :goto_0
.end method

.method private process()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x0

    const v5, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 92
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/pressure/SpotFilter;->filteredOutput(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .line 94
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    new-instance v1, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-object v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-direct {v1, v2}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    invoke-interface {v0, v1}, Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;->onPressureChanged(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    .line 98
    :cond_0
    invoke-static {}, Lcom/zte/mifavor/pressure/SpotFilter;->$SWITCH_TABLE$com$zte$mifavor$pressure$SpotFilter$PressureState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-virtual {v1}, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 163
    :cond_1
    :goto_0
    const-string v0, "pressure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mOldState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mOldState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pressure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v2, v2, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mOldState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    if-eq v0, v1, :cond_3

    .line 167
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    if-eq v0, v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    if-ne v0, v1, :cond_3

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mOldState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    if-ne v0, v1, :cond_a

    .line 170
    iget v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mMinDuration:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-wide v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    iget-wide v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mLightTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mMinDuration:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 182
    :cond_3
    :goto_1
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    .line 101
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPreSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .line 102
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 103
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    .line 104
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    goto/16 :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-wide v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    iget-object v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPreSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-wide v2, v2, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-ltz v0, :cond_4

    .line 111
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 112
    iget-wide v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mLightTime:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-wide v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    iput-wide v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mLightTime:J

    goto/16 :goto_0

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_5

    .line 118
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 119
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPreSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    goto/16 :goto_0

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 122
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    goto/16 :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_6

    .line 129
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 130
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPreSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    goto/16 :goto_0

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 133
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    goto/16 :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-wide v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    iget-object v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPreSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-wide v2, v2, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-ltz v0, :cond_7

    .line 139
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->WEIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    goto/16 :goto_0

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_8

    .line 143
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 144
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPreSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    goto/16 :goto_0

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 147
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    goto/16 :goto_0

    .line 153
    :pswitch_4
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_9

    .line 154
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->START_LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 155
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPreSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    goto/16 :goto_0

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    iget v0, v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->mPressure:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 158
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    goto/16 :goto_0

    .line 173
    :cond_a
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    if-eqz v0, :cond_b

    .line 174
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mOldState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iget-object v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iget-object v3, p0, Lcom/zte/mifavor/pressure/SpotFilter;->tmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;->onStateChanged(Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    .line 176
    :cond_b
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mOldState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 177
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    sget-object v1, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->LIGHT:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    if-eq v0, v1, :cond_3

    .line 178
    iput-wide v6, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mLightTime:J

    goto/16 :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public add(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
    .locals 3
    .param p1, "spot"    # Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .prologue
    .line 83
    new-instance v0, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    .line 84
    .local v0, "c":Lcom/zte/mifavor/pressure/SpotFilter$Spot;
    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mBufSize:I

    if-ne v1, v2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/zte/mifavor/pressure/SpotFilter;->process()V

    .line 89
    return-void
.end method

.method public finish(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 215
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 221
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 222
    sget-object v0, Lcom/zte/mifavor/pressure/SpotFilter$PressureState;->NONE:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mOldState:Lcom/zte/mifavor/pressure/SpotFilter$PressureState;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mPreSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .line 224
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/pressure/SpotFilter;->process()V

    .line 217
    iget-object v0, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mSpots:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0
.end method

.method public setStateMinDuration(I)V
    .locals 0
    .param p1, "millisecond"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/zte/mifavor/pressure/SpotFilter;->mMinDuration:I

    .line 228
    return-void
.end method
