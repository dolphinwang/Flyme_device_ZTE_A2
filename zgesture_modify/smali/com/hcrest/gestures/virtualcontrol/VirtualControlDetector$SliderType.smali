.class public final enum Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;
.super Ljava/lang/Enum;
.source "VirtualControlDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SliderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

.field public static final enum BODY_LINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

.field public static final enum BODY_NONLINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

.field public static final enum USER_LINEAR_ABSOLUTE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

.field public static final enum USER_LINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

.field public static final enum USER_NONLINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;


# instance fields
.field private absolute:Z

.field private final frame:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

.field private linear:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 349
    new-instance v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    const-string v1, "USER_LINEAR_ABSOLUTE"

    sget-object v3, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->USER:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;-><init>(Ljava/lang/String;ILcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;ZZ)V

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->USER_LINEAR_ABSOLUTE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 352
    new-instance v5, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    const-string v6, "BODY_LINEAR_RELATIVE"

    sget-object v8, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->BODY:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    move v7, v4

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;-><init>(Ljava/lang/String;ILcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;ZZ)V

    sput-object v5, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->BODY_LINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 358
    new-instance v5, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    const-string v6, "BODY_NONLINEAR_RELATIVE"

    sget-object v8, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->BODY:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    move v7, v11

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;-><init>(Ljava/lang/String;ILcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;ZZ)V

    sput-object v5, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->BODY_NONLINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 364
    new-instance v5, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    const-string v6, "USER_LINEAR_RELATIVE"

    sget-object v8, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->USER:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    move v7, v12

    move v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;-><init>(Ljava/lang/String;ILcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;ZZ)V

    sput-object v5, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->USER_LINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 367
    new-instance v5, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    const-string v6, "USER_NONLINEAR_RELATIVE"

    sget-object v8, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->USER:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    move v7, v13

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;-><init>(Ljava/lang/String;ILcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;ZZ)V

    sput-object v5, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->USER_NONLINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 343
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->USER_LINEAR_ABSOLUTE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->BODY_LINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->BODY_NONLINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->USER_LINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->USER_NONLINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->$VALUES:[Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;ZZ)V
    .locals 0
    .param p3, "frame"    # Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;
    .param p4, "linear"    # Z
    .param p5, "absolute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 389
    iput-object p3, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->frame:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    .line 390
    iput-boolean p4, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->linear:Z

    .line 391
    iput-boolean p5, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->absolute:Z

    .line 392
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 343
    const-class v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    return-object v0
.end method

.method public static values()[Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->$VALUES:[Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    invoke-virtual {v0}, [Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    return-object v0
.end method


# virtual methods
.method public getReferenceFrame()Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->frame:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->absolute:Z

    return v0
.end method

.method public isLinear()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->linear:Z

    return v0
.end method
