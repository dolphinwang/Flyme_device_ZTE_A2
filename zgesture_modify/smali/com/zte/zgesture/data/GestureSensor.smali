.class public Lcom/zte/zgesture/data/GestureSensor;
.super Ljava/lang/Object;
.source "GestureSensor.java"


# static fields
.field public static final GES_MOTION_MASK:I = 0x1f

.field public static final GES_NOACTION_ENABLE:I = 0x80

.field public static final GES_NOACTION_MASK:I = 0x80

.field public static final GES_SPEED_FAST:I = 0x60

.field public static final GES_SPEED_MASK:I = 0x60

.field public static final GES_SPEED_MID:I = 0x40

.field public static final GES_SPEED_SLOW:I = 0x20

.field public static final TYPE_GESTURE_SENSOR:I = 0xc

.field public static final button_N:I = 0x7

.field public static final button_held:I = 0x6

.field public static final button_released:I = 0x5

.field public static final down:I = 0x4

.field public static final down_tap:I = 0xe

.field public static final left:I = 0x1

.field public static final left_tap:I = 0x8

.field public static final right:I = 0x2

.field public static final right_tap:I = 0x9

.field public static final up:I = 0x3

.field public static final up_tap:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMotion(I)I
    .locals 1
    .param p0, "data"    # I

    .prologue
    .line 28
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method public static getSpeed(B)I
    .locals 1
    .param p0, "data"    # B

    .prologue
    .line 32
    and-int/lit8 v0, p0, 0x60

    return v0
.end method
