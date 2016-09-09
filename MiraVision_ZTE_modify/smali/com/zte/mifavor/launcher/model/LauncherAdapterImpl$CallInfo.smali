.class Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;
.super Ljava/lang/Object;
.source "LauncherAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallInfo"
.end annotation


# static fields
.field public static final PROJECT:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "type=3 AND new>0"

.field public static final SELECTIONARGS:[Ljava/lang/String;

.field public static final SORTORDER:Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 584
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->URI:Landroid/net/Uri;

    .line 585
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 586
    const-string v2, "number"

    aput-object v2, v0, v1

    .line 585
    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->PROJECT:[Ljava/lang/String;

    .line 590
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 591
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->SORTORDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
