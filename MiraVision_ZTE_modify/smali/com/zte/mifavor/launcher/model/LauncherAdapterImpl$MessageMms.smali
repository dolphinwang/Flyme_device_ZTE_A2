.class Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;
.super Ljava/lang/Object;
.source "LauncherAdapterImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageMms"
.end annotation


# static fields
.field public static final PROJECT:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "(read = 0)"

.field public static final SELECTIONARGS:[Ljava/lang/String;

.field public static final SORTORDER:Ljava/lang/String;

.field public static final URI_MMS:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 597
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->URI_MMS:Landroid/net/Uri;

    .line 598
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 599
    const-string v2, "date"

    aput-object v2, v0, v1

    .line 598
    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->PROJECT:[Ljava/lang/String;

    .line 602
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->SELECTIONARGS:[Ljava/lang/String;

    .line 603
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->SORTORDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
