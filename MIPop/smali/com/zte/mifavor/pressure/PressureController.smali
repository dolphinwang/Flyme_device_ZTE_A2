.class public Lcom/zte/mifavor/pressure/PressureController;
.super Ljava/lang/Object;
.source "PressureController.java"

# interfaces
.implements Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;


# static fields
.field private static final DURATION_VIBRATE_WHIT_LIGHT_PRESS:I = 0x32

.field private static final DURATION_VIBRATE_WHIT_WEIGHT_PRESS:I = 0x64

.field private static final SMOOTHING_FILTER_POS_DECAY:F = 0.65f

.field private static final SMOOTHING_FILTER_PRESSURE_DECAY:F = 0.9f

.field private static final SMOOTHING_FILTER_WLEN:I = 0x6


# instance fields
.field private mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

.field private mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

.field mTmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-direct {v1}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;-><init>()V

    iput-object v1, p0, Lcom/zte/mifavor/pressure/PressureController;->mTmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .line 22
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/zte/mifavor/pressure/SpotFilter;

    iput-object v1, p0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 27
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    new-instance v2, Lcom/zte/mifavor/pressure/SpotFilter;

    const/4 v3, 0x6

    const v4, 0x3f266666    # 0.65f

    .line 25
    const v5, 0x3f666666    # 0.9f

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/zte/mifavor/pressure/SpotFilter;-><init>(IFFLcom/zte/mifavor/pressure/SpotFilter$PressureCallback;)V

    .line 24
    aput-object v2, v1, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getLightPressThreshold()F
    .locals 1

    .prologue
    .line 114
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public static getVibrateDurationOfLightPress()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x32

    return v0
.end method

.method public static getVibrateDurationOfWeightPress()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x64

    return v0
.end method

.method public static getWeightPressThreshold()F
    .locals 1

    .prologue
    .line 118
    const v0, 0x3f666666    # 0.9f

    return v0
.end method


# virtual methods
.method public acquirePressureEvent(Landroid/view/MotionEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 31
    .local v5, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v20

    .line 32
    .local v20, "N":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    .line 33
    .local v21, "P":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    .line 34
    .local v10, "time":J
    if-eqz v5, :cond_0

    const/4 v4, 0x5

    if-eq v5, v4, :cond_0

    .line 35
    const/4 v4, 0x1

    if-eq v5, v4, :cond_0

    const/4 v4, 0x6

    if-ne v5, v4, :cond_5

    .line 36
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v23

    .line 38
    .local v23, "j":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/pressure/PressureController;->mTmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .line 39
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 40
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 41
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v8

    .line 42
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v9

    .line 38
    invoke-virtual/range {v4 .. v11}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->update(IFFFFJ)V

    .line 44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aget-object v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/pressure/PressureController;->mTmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-virtual {v4, v6}, Lcom/zte/mifavor/pressure/SpotFilter;->add(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    .line 45
    const/4 v4, 0x1

    if-eq v5, v4, :cond_1

    const/4 v4, 0x6

    if-ne v5, v4, :cond_2

    .line 46
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {v4, v10, v11}, Lcom/zte/mifavor/pressure/SpotFilter;->finish(J)V

    .line 72
    .end local v23    # "j":I
    :cond_2
    const/4 v4, 0x3

    if-eq v5, v4, :cond_3

    const/4 v4, 0x1

    if-ne v5, v4, :cond_4

    .line 73
    :cond_3
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    .line 77
    .end local v23    # "j":I
    :cond_4
    return-void

    .line 48
    :cond_5
    const/4 v4, 0x2

    if-ne v5, v4, :cond_2

    .line 49
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 61
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/pressure/PressureController;->mTmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .line 63
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 64
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 65
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v8

    .line 66
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v9

    .line 62
    invoke-virtual/range {v4 .. v11}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->update(IFFFFJ)V

    .line 68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aget-object v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/pressure/PressureController;->mTmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-virtual {v4, v6}, Lcom/zte/mifavor/pressure/SpotFilter;->add(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    .line 61
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 50
    .end local v23    # "j":I
    :cond_6
    const/16 v23, 0x0

    .restart local v23    # "j":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    .line 49
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 51
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/pressure/PressureController;->mTmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .line 52
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v14

    .line 53
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v15

    .line 54
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalSize(II)F

    move-result v16

    .line 55
    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v17

    .line 56
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v18

    move v13, v5

    .line 51
    invoke-virtual/range {v12 .. v19}, Lcom/zte/mifavor/pressure/SpotFilter$Spot;->update(IFFFFJ)V

    .line 58
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aget-object v4, v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/pressure/PressureController;->mTmpSpot:Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    invoke-virtual {v4, v6}, Lcom/zte/mifavor/pressure/SpotFilter;->add(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    .line 50
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 74
    .end local v22    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {v4, v10, v11}, Lcom/zte/mifavor/pressure/SpotFilter;->finish(J)V

    .line 73
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0
.end method

.method public onPressureChanged(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
    .locals 1
    .param p1, "spot"    # Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/mifavor/pressure/PressureController;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/zte/mifavor/pressure/PressureController;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;->onPressureChanged(Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V
    .locals 1
    .param p1, "oldState"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .param p2, "newState"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureState;
    .param p3, "spot"    # Lcom/zte/mifavor/pressure/SpotFilter$Spot;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/zte/mifavor/pressure/PressureController;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/zte/mifavor/pressure/PressureController;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;->onStateChanged(Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$PressureState;Lcom/zte/mifavor/pressure/SpotFilter$Spot;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/zte/mifavor/pressure/PressureController;->mCallback:Lcom/zte/mifavor/pressure/SpotFilter$PressureCallback;

    .line 97
    return-void
.end method

.method public setStateMinDuration(I)V
    .locals 2
    .param p1, "millisecond"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 103
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/pressure/PressureController;->mStrokes:[Lcom/zte/mifavor/pressure/SpotFilter;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/zte/mifavor/pressure/SpotFilter;->setStateMinDuration(I)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
