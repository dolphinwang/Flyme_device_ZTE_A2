.class synthetic Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;
.super Ljava/lang/Object;
.source "VirtualControlDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hcrest$gestures$virtualcontrol$VirtualControlDetector$ReferenceFrame:[I

.field static final synthetic $SwitchMap$com$hcrest$sensors$util$RotationAxis:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 274
    invoke-static {}, Lcom/hcrest/sensors/util/RotationAxis;->values()[Lcom/hcrest/sensors/util/RotationAxis;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;->$SwitchMap$com$hcrest$sensors$util$RotationAxis:[I

    :try_start_0
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;->$SwitchMap$com$hcrest$sensors$util$RotationAxis:[I

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->ROLL:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-virtual {v1}, Lcom/hcrest/sensors/util/RotationAxis;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;->$SwitchMap$com$hcrest$sensors$util$RotationAxis:[I

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->PITCH:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-virtual {v1}, Lcom/hcrest/sensors/util/RotationAxis;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;->$SwitchMap$com$hcrest$sensors$util$RotationAxis:[I

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->YAW:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-virtual {v1}, Lcom/hcrest/sensors/util/RotationAxis;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    :goto_2
    invoke-static {}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->values()[Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;->$SwitchMap$com$hcrest$gestures$virtualcontrol$VirtualControlDetector$ReferenceFrame:[I

    :try_start_3
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;->$SwitchMap$com$hcrest$gestures$virtualcontrol$VirtualControlDetector$ReferenceFrame:[I

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->BODY:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    invoke-virtual {v1}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;->$SwitchMap$com$hcrest$gestures$virtualcontrol$VirtualControlDetector$ReferenceFrame:[I

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->USER:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    invoke-virtual {v1}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 274
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
