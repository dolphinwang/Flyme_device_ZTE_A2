.class public final enum Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;
.super Ljava/lang/Enum;
.source "FeatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/tools/FeatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZteProject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

.field public static final enum ALL:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

.field public static final enum AXON2:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

.field public static final enum AXON2O:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

.field public static final enum AXONM:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

.field public static final enum AXONMINI:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

.field public static final enum MFV35:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

.field public static final enum V7LITE:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

.field public static final enum V7MAX:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->ALL:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 9
    new-instance v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    const-string v1, "AXONMINI"

    invoke-direct {v0, v1, v4}, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->AXONMINI:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 10
    new-instance v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    const-string v1, "AXONM"

    invoke-direct {v0, v1, v5}, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->AXONM:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 11
    new-instance v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    const-string v1, "V7MAX"

    invoke-direct {v0, v1, v6}, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->V7MAX:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 12
    new-instance v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    const-string v1, "V7LITE"

    invoke-direct {v0, v1, v7}, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->V7LITE:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 13
    new-instance v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    const-string v1, "AXON2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->AXON2:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 14
    new-instance v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    const-string v1, "AXON2O"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->AXON2O:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 15
    new-instance v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    const-string v1, "MFV35"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->MFV35:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    sget-object v1, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->ALL:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->AXONMINI:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->AXONM:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->V7MAX:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->V7LITE:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->AXON2:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->AXON2O:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->MFV35:Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->$VALUES:[Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    return-object v0
.end method

.method public static values()[Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->$VALUES:[Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    invoke-virtual {v0}, [Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zgesture/tools/FeatureConfig$ZteProject;

    return-object v0
.end method
