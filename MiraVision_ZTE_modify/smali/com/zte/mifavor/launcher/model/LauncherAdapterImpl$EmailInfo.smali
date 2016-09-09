.class Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;
.super Ljava/lang/Object;
.source "LauncherAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmailInfo"
.end annotation


# static fields
.field public static final PROJECT:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "unreadCount > 0"

.field public static final SELECTIONARGS:[Ljava/lang/String;

.field public static final SORTORDER:Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 623
    const-string v0, "content://com.android.email.provider/mailbox/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->URI:Landroid/net/Uri;

    .line 624
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 625
    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    .line 624
    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->PROJECT:[Ljava/lang/String;

    .line 628
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 629
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->SORTORDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
