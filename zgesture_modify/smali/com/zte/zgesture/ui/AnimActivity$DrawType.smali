.class public final enum Lcom/zte/zgesture/ui/AnimActivity$DrawType;
.super Ljava/lang/Enum;
.source "AnimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/ui/AnimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/zgesture/ui/AnimActivity$DrawType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/zgesture/ui/AnimActivity$DrawType;

.field public static final enum C:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

.field public static final enum M:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

.field public static final enum NONE:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

.field public static final enum O:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

.field public static final enum W:Lcom/zte/zgesture/ui/AnimActivity$DrawType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->NONE:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    .line 103
    new-instance v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    const-string v1, "C"

    invoke-direct {v0, v1, v3}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->C:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    .line 104
    new-instance v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    const-string v1, "O"

    invoke-direct {v0, v1, v4}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->O:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    .line 105
    new-instance v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    const-string v1, "M"

    invoke-direct {v0, v1, v5}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->M:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    .line 106
    new-instance v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    const-string v1, "W"

    invoke-direct {v0, v1, v6}, Lcom/zte/zgesture/ui/AnimActivity$DrawType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->W:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    .line 101
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    sget-object v1, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->NONE:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->C:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->O:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->M:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->W:Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->$VALUES:[Lcom/zte/zgesture/ui/AnimActivity$DrawType;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zgesture/ui/AnimActivity$DrawType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    return-object v0
.end method

.method public static values()[Lcom/zte/zgesture/ui/AnimActivity$DrawType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/zte/zgesture/ui/AnimActivity$DrawType;->$VALUES:[Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    invoke-virtual {v0}, [Lcom/zte/zgesture/ui/AnimActivity$DrawType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zgesture/ui/AnimActivity$DrawType;

    return-object v0
.end method
