.class Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;
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
    name = "MessageSms"
.end annotation


# static fields
.field public static final PROJECT:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "(type = 1 AND read = 0)"

.field public static final SELECTIONARGS:[Ljava/lang/String;

.field public static final SORTORDER:Ljava/lang/String;

.field public static final URI_OBSERVER:Landroid/net/Uri;

.field public static final URI_SMS:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 610
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->URI_OBSERVER:Landroid/net/Uri;

    .line 611
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->URI_SMS:Landroid/net/Uri;

    .line 612
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 613
    const-string v2, "thread_id"

    aput-object v2, v0, v1

    .line 612
    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->PROJECT:[Ljava/lang/String;

    .line 618
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->SELECTIONARGS:[Ljava/lang/String;

    .line 619
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->SORTORDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
