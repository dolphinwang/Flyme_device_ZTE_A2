.class public Lcom/zte/zgesture/tools/ShellUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/tools/ShellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p1, p0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->result:I

    .line 215
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "successMsg"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput p1, p0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->result:I

    .line 219
    iput-object p2, p0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/zte/zgesture/tools/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 221
    return-void
.end method
