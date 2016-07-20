.class public final enum Lcom/hcrest/sensors/util/RotationAxis;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hcrest/sensors/util/RotationAxis;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PITCH:Lcom/hcrest/sensors/util/RotationAxis;

.field public static final enum ROLL:Lcom/hcrest/sensors/util/RotationAxis;

.field public static final enum YAW:Lcom/hcrest/sensors/util/RotationAxis;

.field private static final synthetic a:[Lcom/hcrest/sensors/util/RotationAxis;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/hcrest/sensors/util/RotationAxis;

    const-string v1, "YAW"

    invoke-direct {v0, v1, v2}, Lcom/hcrest/sensors/util/RotationAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/util/RotationAxis;->YAW:Lcom/hcrest/sensors/util/RotationAxis;

    .line 26
    new-instance v0, Lcom/hcrest/sensors/util/RotationAxis;

    const-string v1, "PITCH"

    invoke-direct {v0, v1, v3}, Lcom/hcrest/sensors/util/RotationAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/util/RotationAxis;->PITCH:Lcom/hcrest/sensors/util/RotationAxis;

    .line 32
    new-instance v0, Lcom/hcrest/sensors/util/RotationAxis;

    const-string v1, "ROLL"

    invoke-direct {v0, v1, v4}, Lcom/hcrest/sensors/util/RotationAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/sensors/util/RotationAxis;->ROLL:Lcom/hcrest/sensors/util/RotationAxis;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hcrest/sensors/util/RotationAxis;

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->YAW:Lcom/hcrest/sensors/util/RotationAxis;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->PITCH:Lcom/hcrest/sensors/util/RotationAxis;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->ROLL:Lcom/hcrest/sensors/util/RotationAxis;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hcrest/sensors/util/RotationAxis;->a:[Lcom/hcrest/sensors/util/RotationAxis;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcrest/sensors/util/RotationAxis;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/hcrest/sensors/util/RotationAxis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hcrest/sensors/util/RotationAxis;

    return-object v0
.end method

.method public static values()[Lcom/hcrest/sensors/util/RotationAxis;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/hcrest/sensors/util/RotationAxis;->a:[Lcom/hcrest/sensors/util/RotationAxis;

    invoke-virtual {v0}, [Lcom/hcrest/sensors/util/RotationAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hcrest/sensors/util/RotationAxis;

    return-object v0
.end method
