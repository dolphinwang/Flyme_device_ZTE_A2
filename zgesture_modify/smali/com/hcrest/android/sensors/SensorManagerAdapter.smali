.class public Lcom/hcrest/android/sensors/SensorManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/hcrest/sensors/SensorAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/android/sensors/SensorManagerAdapter$3;,
        Lcom/hcrest/android/sensors/SensorManagerAdapter$a;,
        Lcom/hcrest/android/sensors/SensorManagerAdapter$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_SENSOR_DELAY:I = 0x0

.field public static final SENSOR_INVALID:I = -0x2

.field public static final TYPE_RELATIVE_CURSOR_LEGACY_ICS:I = 0xf

.field public static final TYPE_RELATIVE_CURSOR_LEGACY_JB:I = 0x80


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/hardware/SensorManager;

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/android/sensors/SensorManagerAdapter$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/hcrest/android/sensors/SensorManagerAdapter$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseIntArray;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->a:Z

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->d:Ljava/util/Vector;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->e:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;-><init>(Lcom/hcrest/android/sensors/SensorManagerAdapter;I)V

    iput-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->f:Landroid/util/SparseIntArray;

    .line 317
    iput-boolean v2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->g:Z

    .line 125
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/hcrest/android/sensors/SensorManagerAdapter;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/hcrest/android/sensors/SensorManagerAdapter;Z)Z
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->g:Z

    return p1
.end method

.method static synthetic a(Lcom/hcrest/android/sensors/SensorManagerAdapter;[F)[F
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->a([F)[F

    move-result-object v0

    return-object v0
.end method

.method private a([F)[F
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    array-length v0, p1

    new-array v0, v0, [F

    .line 303
    array-length v1, p1

    if-ne v1, v5, :cond_0

    .line 304
    aget v1, p1, v3

    aput v1, v0, v2

    .line 305
    aget v1, p1, v2

    aput v1, v0, v3

    .line 306
    aget v1, p1, v4

    neg-float v1, v1

    aput v1, v0, v4

    .line 313
    :goto_0
    return-object v0

    .line 308
    :cond_0
    aget v1, p1, v5

    aput v1, v0, v2

    .line 309
    aget v1, p1, v3

    aput v1, v0, v3

    .line 310
    aget v1, p1, v2

    aput v1, v0, v4

    .line 311
    aget v1, p1, v4

    neg-float v1, v1

    aput v1, v0, v5

    goto :goto_0
.end method

.method static synthetic b(Lcom/hcrest/android/sensors/SensorManagerAdapter;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->b:I

    return v0
.end method


# virtual methods
.method public getSensorDelayFromPreferred(I)I
    .locals 0
    .param p1, "preferredDelay"    # I

    .prologue
    .line 292
    return p1
.end method

.method public getSensorFromSensorType(Lcom/hcrest/sensors/SensorType;)I
    .locals 7
    .param p1, "sensorType"    # Lcom/hcrest/sensors/SensorType;

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0xf

    const/16 v2, 0x12

    const/16 v3, 0x13

    const/4 v0, -0x2

    .line 176
    sget-object v5, Lcom/hcrest/android/sensors/SensorManagerAdapter$3;->a:[I

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 178
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    move v0, v4

    .line 181
    goto :goto_0

    .line 184
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 187
    :pswitch_3
    const/16 v0, 0x9

    goto :goto_0

    .line 190
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 193
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 196
    :pswitch_6
    const/16 v0, 0xa

    goto :goto_0

    .line 199
    :pswitch_7
    const/16 v0, 0xb

    goto :goto_0

    .line 207
    :pswitch_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 208
    const/high16 v0, 0x1010000

    goto :goto_0

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hillcrest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 215
    :cond_2
    const-string v2, "SensorManagerAdapter"

    const-string v3, "Failed getting Relative Cursor sensor #128, trying sensor #15"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hillcrest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 222
    :cond_3
    const-string v1, "SensorManagerAdapter"

    const-string v2, "Failed getting Relative Cursor sensor #128 or #15"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_4
    iput-boolean v4, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->a:Z

    .line 228
    iput v1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->b:I

    move v0, v1

    .line 229
    goto :goto_0

    .line 233
    :cond_5
    iput-boolean v4, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->a:Z

    .line 234
    const/16 v0, 0x80

    iput v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->b:I

    .line 235
    const/16 v0, 0x80

    goto :goto_0

    .line 239
    :pswitch_9
    const/4 v0, 0x5

    goto :goto_0

    .line 241
    :pswitch_a
    const/4 v0, 0x6

    goto :goto_0

    .line 243
    :pswitch_b
    const/16 v0, 0x8

    goto :goto_0

    .line 246
    :pswitch_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    .line 248
    :pswitch_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    .line 250
    :pswitch_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    .line 252
    :pswitch_f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 254
    :pswitch_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    .line 256
    :pswitch_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    .line 258
    :pswitch_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    move v0, v2

    goto/16 :goto_0

    .line 260
    :pswitch_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    move v0, v3

    goto/16 :goto_0

    .line 262
    :pswitch_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    .line 265
    :pswitch_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    const v0, 0x1010007

    goto/16 :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public getSensorsFromSensorTypes(Ljava/util/EnumSet;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 160
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/sensors/SensorType;

    .line 162
    invoke-virtual {p0, v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->getSensorFromSensorType(Lcom/hcrest/sensors/SensorType;)I

    move-result v0

    aput v0, v2, v1

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 165
    :cond_0
    return-object v2
.end method

.method public varargs getTriggerSensor([I)I
    .locals 6
    .param p1, "sensors"    # [I

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 140
    const/4 v3, -0x1

    .line 141
    array-length v5, p1

    move v4, v0

    move v1, v0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v2, p1, v4

    .line 142
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 143
    if-le v0, v1, :cond_1

    move v1, v2

    .line 141
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 148
    :cond_0
    return v3

    :cond_1
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public initializeAngularPositionSensor()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->g:Z

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 326
    :cond_0
    new-instance v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/hcrest/sensors/SensorType;->ANGULAR_POSITION:Lcom/hcrest/sensors/SensorType;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;-><init>(Lcom/hcrest/android/sensors/SensorManagerAdapter;Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;I)V

    .line 330
    new-instance v1, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;-><init>(Lcom/hcrest/android/sensors/SensorManagerAdapter;Lcom/hcrest/android/sensors/SensorManagerAdapter$a;)V

    invoke-virtual {v0, v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;)V

    .line 345
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a(Z)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 745
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->e:Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;

    .line 735
    if-eqz v0, :cond_1

    .line 736
    iget-object v0, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;

    .line 737
    invoke-virtual {v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 738
    invoke-virtual {v0, p1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 742
    :cond_1
    return-void
.end method

.method public registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;)V
    .locals 1
    .param p1, "listener"    # Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p2, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;I)V

    .line 624
    return-void
.end method

.method public registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;I)V
    .locals 1
    .param p1, "listener"    # Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;
    .param p3, "sensorDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p2, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;ILcom/hcrest/sensors/SensorType;)V

    .line 630
    return-void
.end method

.method public registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;ILcom/hcrest/sensors/SensorType;)V
    .locals 8
    .param p1, "listener"    # Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;
    .param p3, "sensorDelay"    # I
    .param p4, "triggerSensor"    # Lcom/hcrest/sensors/SensorType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;I",
            "Lcom/hcrest/sensors/SensorType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 638
    .local p2, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    if-nez p1, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;

    .line 644
    invoke-virtual {v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a()Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 649
    :cond_3
    new-instance v2, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;-><init>(Lcom/hcrest/android/sensors/SensorManagerAdapter;Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;I)V

    .line 652
    if-eqz p4, :cond_4

    .line 653
    invoke-virtual {v2, p4}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a(Lcom/hcrest/sensors/SensorType;)V

    .line 656
    :cond_4
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 658
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a(Z)V

    .line 660
    invoke-virtual {v2}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->c()[I

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget v5, v3, v1

    .line 661
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;

    .line 662
    if-eqz v0, :cond_6

    .line 663
    iget-object v6, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->b:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 664
    iget v6, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->c:I

    if-ge p3, v6, :cond_5

    .line 665
    iget-object v6, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v7, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v6, p0, v5, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 668
    iput p3, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->c:I

    .line 660
    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 671
    :cond_6
    new-instance v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;

    invoke-direct {v0, v5, p3}, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;-><init>(II)V

    .line 672
    iget-object v6, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->b:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v6, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v0, p0, v5, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_2
.end method

.method public unregisterSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;)V
    .locals 11
    .param p1, "listener"    # Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    .prologue
    const/4 v4, 0x0

    .line 686
    if-nez p1, :cond_1

    .line 730
    :cond_0
    return-void

    .line 690
    :cond_1
    const/4 v1, 0x0

    .line 691
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;

    .line 692
    invoke-virtual {v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a()Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v5, v0

    .line 698
    :goto_0
    if-eqz v5, :cond_0

    .line 699
    invoke-virtual {v5, v4}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a(Z)V

    .line 700
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->d:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {v5}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->c()[I

    move-result-object v6

    array-length v7, v6

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_0

    aget v8, v6, v3

    .line 703
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;

    .line 704
    if-eqz v0, :cond_3

    .line 705
    iget-object v1, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->b:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 706
    iget-object v1, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 707
    iput v4, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->c:I

    .line 708
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 710
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 702
    :cond_3
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 712
    :cond_4
    const v1, 0x7fffffff

    .line 713
    iget-object v2, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v1

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;

    .line 714
    invoke-virtual {v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->b()I

    move-result v10

    if-ge v10, v2, :cond_6

    .line 715
    invoke-virtual {v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->b()I

    move-result v1

    :goto_4
    move v2, v1

    goto :goto_3

    .line 718
    :cond_5
    iget v1, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->c:I

    if-eq v2, v1, :cond_3

    .line 719
    iput v2, v0, Lcom/hcrest/android/sensors/SensorManagerAdapter$b;->c:I

    .line 720
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move-object v5, v1

    goto :goto_0
.end method
