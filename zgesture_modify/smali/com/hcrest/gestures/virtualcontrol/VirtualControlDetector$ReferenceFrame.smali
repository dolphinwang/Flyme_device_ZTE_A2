.class public final enum Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;
.super Ljava/lang/Enum;
.source "VirtualControlDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferenceFrame"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

.field public static final enum BODY:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

.field public static final enum USER:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    new-instance v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->USER:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    .line 337
    new-instance v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v3}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->BODY:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    .line 331
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->USER:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->BODY:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->$VALUES:[Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    const-class v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    return-object v0
.end method

.method public static values()[Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->$VALUES:[Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    invoke-virtual {v0}, [Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    return-object v0
.end method
