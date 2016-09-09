.class public Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;
.super Ljava/lang/Object;
.source "LauncherAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarInfo"
.end annotation


# static fields
.field public static final PROJECT:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String; = "(state=1)"

.field public static final SELECTIONARGS:[Ljava/lang/String;

.field public static final SORTORDER:Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 633
    sget-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->URI:Landroid/net/Uri;

    .line 634
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 635
    const-string v2, "state"

    aput-object v2, v0, v1

    .line 634
    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->PROJECT:[Ljava/lang/String;

    .line 639
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 640
    sput-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->SORTORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
