.class Lcom/zte/mifavor/settings/MfConfig$1;
.super Ljava/lang/Object;
.source "MfConfig.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/settings/MfConfig;->loadProjectConfigs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/settings/MfConfig;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/settings/MfConfig;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zte/mifavor/settings/MfConfig$1;->this$0:Lcom/zte/mifavor/settings/MfConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 102
    const-string v1, "\\."

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "ns":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 104
    aget-object v1, v0, v2

    const-string v2, "settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 106
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
