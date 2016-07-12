.class public abstract Landroid/telecom/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Landroid/telecom/IConferenceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$Listener;
    }
.end annotation


# static fields
.field public static final CAPABILITY_ADD_CALL:I = 0x20000

.field public static final CAPABILITY_ANSWER:I = 0x8000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_ECT:I = 0x80000

.field public static final CAPABILITY_GENERIC_CONFERENCE:I = 0x4000

.field public static final CAPABILITY_HIGH_DEF_AUDIO:I = 0x400

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_INVITE_PARTICIPANTS:I = 0x200000

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE:I = 0x200

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNHOLD:I = 0x10000

.field public static final CAPABILITY_UNUSED:I = 0x10

.field public static final CAPABILITY_VOICE_RECORD:I = 0x40000

.field public static final CAPABILITY_VOLTE:I = 0x100000

.field public static final CAPABILITY_VoWIFI:I = 0x800

.field private static final PII_DEBUG:Z

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x0

.field public static final STATE_NEW:I = 0x1

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mAudioModeIsVoip:Z

.field private mAudioState:Landroid/telecom/AudioState;

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/Conference;

.field private final mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/IConferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionService:Landroid/telecom/ConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/IConferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 800
    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 814
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 817
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 820
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 839
    return-void
.end method

.method static synthetic access$400(Landroid/telecom/Connection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/Connection;

    .prologue
    .line 69
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Landroid/telecom/Connection;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/Connection;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method static callStateToFormattedDumpString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1828
    packed-switch p0, :pswitch_data_0

    .line 1843
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 1831
    :pswitch_0
    const-string/jumbo v0, "new"

    goto :goto_0

    .line 1833
    :pswitch_1
    const-string/jumbo v0, "ringing"

    goto :goto_0

    .line 1835
    :pswitch_2
    const-string v0, "dialing"

    goto :goto_0

    .line 1837
    :pswitch_3
    const-string v0, "active"

    goto :goto_0

    .line 1839
    :pswitch_4
    const-string/jumbo v0, "onhold"

    goto :goto_0

    .line 1841
    :pswitch_5
    const-string v0, "disconnected"

    goto :goto_0

    .line 1828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    .line 236
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string v1, " CAPABILITY_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_3
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 287
    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_4
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 290
    const-string v1, " CAPABILITY_MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_5
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 293
    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_6
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 296
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_7
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 299
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_8
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 302
    const-string v1, " CAPABILITY_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_9
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 305
    const-string v1, " CAPABILITY_VoWIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_a
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 308
    const-string v1, " CAPABILITY_GENERIC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_b
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c

    .line 312
    const-string v1, " CAPABILITY_ANSWER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_c
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    .line 315
    const-string v1, " CAPABILITY_UNHOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_d
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e

    .line 318
    const-string v1, " CAPABILITY_ADD_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_e
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    .line 321
    const-string v1, " CAPABILITY_VOICE_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_f
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    .line 324
    const-string v1, " CAPABILITY_ECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_10
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    .line 329
    const-string v1, " CAPABILITY_VOLTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_11
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    .line 333
    const-string v1, " CAPABILITY_INVITE_PARTICIPANTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_12
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_13

    .line 337
    const-string v1, " CAPABILITY_SEPARATE_FROM_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_13
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_14

    .line 341
    const-string v1, " CAPABILITY_DISCONNECT_FROM_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_14
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final clearConferenceableList()V
    .locals 5

    .prologue
    .line 1746
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/IConferenceable;

    .line 1747
    .local v0, "c":Landroid/telecom/IConferenceable;
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 1748
    check-cast v2, Landroid/telecom/Connection;

    .line 1749
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_0

    .line 1750
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 1751
    check-cast v1, Landroid/telecom/Conference;

    .line 1752
    .local v1, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v4}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_0

    .line 1755
    .end local v0    # "c":Landroid/telecom/IConferenceable;
    .end local v1    # "conference":Landroid/telecom/Conference;
    :cond_2
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1756
    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    .prologue
    .line 1730
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1706
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final fireConferenceChanged()V
    .locals 3

    .prologue
    .line 1740
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1741
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    goto :goto_0

    .line 1743
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    .prologue
    .line 1734
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1735
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 1737
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v7, 0x0

    .line 1633
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1634
    iget v4, p0, Landroid/telecom/Connection;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telecom/Connection;->mState:I

    if-eq v4, p1, :cond_1

    .line 1635
    const-string v4, "Connection already DISCONNECTED; cannot transition out of this state."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1657
    :cond_0
    return-void

    .line 1638
    :cond_1
    iget v4, p0, Landroid/telecom/Connection;->mState:I

    if-eq v4, p1, :cond_0

    .line 1639
    const-string/jumbo v4, "setState: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1640
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    .line 1643
    new-instance v4, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    invoke-virtual {p0, v4}, Landroid/telecom/Connection;->configDumpLogBuilder(Lcom/mediatek/telecom/FormattedLog$Builder;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v0

    .line 1644
    .local v0, "builder":Lcom/mediatek/telecom/FormattedLog$Builder;
    if-eqz v0, :cond_2

    .line 1645
    invoke-virtual {v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDumpInfo()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v1

    .line 1646
    .local v1, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v1, :cond_2

    .line 1647
    invoke-virtual {v1}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1652
    .end local v1    # "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 1653
    iget-object v4, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection$Listener;

    .line 1654
    .local v3, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v3, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "state"    # I

    .prologue
    .line 1002
    packed-switch p0, :pswitch_data_0

    .line 1018
    const-class v0, Landroid/telecom/Connection;

    const-string v1, "Unknown state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1004
    :pswitch_0
    const-string v0, "STATE_INITIALIZING"

    goto :goto_0

    .line 1006
    :pswitch_1
    const-string v0, "STATE_NEW"

    goto :goto_0

    .line 1008
    :pswitch_2
    const-string v0, "STATE_RINGING"

    goto :goto_0

    .line 1010
    :pswitch_3
    const-string v0, "STATE_DIALING"

    goto :goto_0

    .line 1012
    :pswitch_4
    const-string v0, "STATE_ACTIVE"

    goto :goto_0

    .line 1014
    :pswitch_5
    const-string v0, "STATE_HOLDING"

    goto :goto_0

    .line 1016
    :pswitch_6
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 1002
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1609
    if-nez p0, :cond_1

    .line 1610
    const-string p0, ""

    .line 1629
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1613
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    sget-boolean v3, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-nez v3, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1621
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1622
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1623
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_2

    const/16 v3, 0x40

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_3

    .line 1624
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1621
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1626
    :cond_3
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1629
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 267
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 268
    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 958
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 959
    return-object p0
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 247
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    move-result v0

    return v0
.end method

.method public checkImmutable()V
    .locals 0

    .prologue
    .line 1716
    return-void
.end method

.method protected configDumpLogBuilder(Lcom/mediatek/telecom/FormattedLog$Builder;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 2
    .param p1, "builder"    # Lcom/mediatek/telecom/FormattedLog$Builder;

    .prologue
    .line 1792
    if-nez p1, :cond_0

    .line 1793
    const/4 p1, 0x0

    .line 1817
    .end local p1    # "builder":Lcom/mediatek/telecom/FormattedLog$Builder;
    :goto_0
    return-object p1

    .line 1796
    .restart local p1    # "builder":Lcom/mediatek/telecom/FormattedLog$Builder;
    :cond_0
    const-string v0, "CC"

    invoke-virtual {p1, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 1797
    sget-object v0, Lcom/mediatek/telecom/FormattedLog$OpType;->DUMP:Lcom/mediatek/telecom/FormattedLog$OpType;

    invoke-virtual {p1, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 1800
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1801
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 1805
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 1806
    const-string v0, "isConfCall"

    const-string v1, "No"

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 1808
    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/telecom/Connection;->mState:I

    invoke-static {v1}, Landroid/telecom/Connection;->callStateToFormattedDumpString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 1809
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1810
    const-string v0, "isConfChildCall"

    const-string v1, "No"

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 1814
    :goto_1
    const-string v0, "capabilities"

    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    goto :goto_0

    .line 1812
    :cond_2
    const-string v0, "isConfChildCall"

    const-string v1, "Yes"

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    goto :goto_1
.end method

.method public final destroy()V
    .locals 3

    .prologue
    .line 1246
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1247
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1249
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected fireOnCallState()V
    .locals 0

    .prologue
    .line 1667
    return-void
.end method

.method protected fireOnCdmaCallAccepted()V
    .locals 6

    .prologue
    .line 1673
    const-string v2, "fireOnCdmaCallAccepted: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/telecom/Connection;->mState:I

    invoke-static {v5}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1674
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1675
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onCdmaCallAccepted(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1677
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Landroid/telecom/Connection;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public final getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final getAddressPresentation()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Landroid/telecom/Connection;->mAudioState:Landroid/telecom/AudioState;

    return-object v0
.end method

.method public final getCallCapabilities()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1032
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v0

    return v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final getConferenceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/IConferenceable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1325
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method public final isRingbackRequested()Z
    .locals 1

    .prologue
    .line 932
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method public final notifyActionFailed(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyActionFailed action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1409
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1411
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onActionFailed(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1413
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceStarted()V
    .locals 3

    .prologue
    .line 1775
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1776
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    goto :goto_0

    .line 1778
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final notifyConnectionLost()V
    .locals 3

    .prologue
    .line 1399
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1400
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConnectionLost(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1402
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public notifyIncomingInfoUpdate(ILjava/lang/String;I)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "alphaid"    # Ljava/lang/String;
    .param p3, "cli_validity"    # I

    .prologue
    .line 1437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyIncomingInfoUpdate type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " alphaid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cli_validity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1439
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1440
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/telecom/Connection$Listener;->onIncomingInfoUpdate(Landroid/telecom/Connection;ILjava/lang/String;I)V

    goto :goto_0

    .line 1442
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public notifyNumberUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyNumberUpdate number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1429
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1430
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onNumberUpdate(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 1433
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public notifySSNotificationToast(IIILjava/lang/String;I)V
    .locals 8
    .param p1, "notiType"    # I
    .param p2, "type"    # I
    .param p3, "code"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "index"    # I

    .prologue
    .line 1417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySSNotificationToast notiType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1419
    iget-object v1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .local v0, "l":Landroid/telecom/Connection$Listener;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 1421
    invoke-virtual/range {v0 .. v6}, Landroid/telecom/Connection$Listener;->onSSNotificationToast(Landroid/telecom/Connection;IIILjava/lang/String;I)V

    goto :goto_0

    .line 1423
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final notifyVtStatusInfo(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 1451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyVtStatusInfo %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1452
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1453
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVtStatusInfo(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1455
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 0

    .prologue
    .line 1524
    return-void
.end method

.method public onAnswer()V
    .locals 1

    .prologue
    .line 1550
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 1551
    return-void
.end method

.method public onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 1543
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 1480
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 1505
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 1514
    return-void
.end method

.method public onExplicitCallTransfer()V
    .locals 0

    .prologue
    .line 1596
    return-void
.end method

.method public onHangupAll()V
    .locals 0

    .prologue
    .line 1604
    return-void
.end method

.method public onHold()V
    .locals 0

    .prologue
    .line 1529
    return-void
.end method

.method public onHold(Ljava/lang/String;)V
    .locals 0
    .param p1, "pendingCallAction"    # Ljava/lang/String;

    .prologue
    .line 1578
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 1495
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    .prologue
    .line 1562
    return-void
.end method

.method public onReject()V
    .locals 0

    .prologue
    .line 1557
    return-void
.end method

.method public onReject(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 1588
    return-void
.end method

.method public onSeparate()V
    .locals 0

    .prologue
    .line 1519
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1488
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    .prologue
    .line 1500
    return-void
.end method

.method public onSwapWithBackgroundCall()V
    .locals 0

    .prologue
    .line 1569
    return-void
.end method

.method public onUnhold()V
    .locals 0

    .prologue
    .line 1534
    return-void
.end method

.method public removeCapability(I)V
    .locals 2
    .param p1, "capability"    # I

    .prologue
    .line 257
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 258
    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 971
    if-eqz p1, :cond_0

    .line 972
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 974
    :cond_0
    return-object p0
.end method

.method public final resetConference()V
    .locals 2

    .prologue
    .line 1386
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_0

    .line 1387
    const-string v0, "Conference reset"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1388
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 1389
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 1391
    :cond_0
    return-void
.end method

.method public setAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 852
    iput-object p1, p0, Landroid/telecom/Connection;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 853
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 854
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 856
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setActive()V
    .locals 1

    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1094
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    .line 1095
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1096
    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 1043
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1044
    const-string/jumbo v2, "setAddress %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    .line 1046
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 1047
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1048
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    goto :goto_0

    .line 1050
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    .prologue
    .line 1257
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1258
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    .line 1259
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1260
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 1262
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method final setAudioState(Landroid/telecom/AudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 991
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 992
    const-string/jumbo v0, "setAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    iput-object p1, p0, Landroid/telecom/Connection;->mAudioState:Landroid/telecom/AudioState;

    .line 994
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 995
    return-void
.end method

.method public final setCallCapabilities(I)V
    .locals 0
    .param p1, "connectionCapabilities"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1224
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    .line 1225
    return-void
.end method

.method public setCallInfo(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1468
    const-string/jumbo v2, "setCallInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1469
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1470
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onCallInfoChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1472
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 1060
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1061
    const-string/jumbo v2, "setCallerDisplayName %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    .line 1063
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    .line 1064
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1065
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    goto :goto_0

    .line 1067
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1369
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1371
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1

    .line 1372
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 1373
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1374
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 1376
    :cond_0
    const/4 v0, 0x1

    .line 1378
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1283
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1284
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 1285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1288
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1289
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1290
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1293
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 1294
    return-void
.end method

.method public final setConferenceables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/IConferenceable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1303
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/IConferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 1304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/IConferenceable;

    .line 1307
    .local v0, "c":Landroid/telecom/IConferenceable;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1308
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 1309
    check-cast v2, Landroid/telecom/Connection;

    .line 1310
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1315
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1311
    :cond_2
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 1312
    check-cast v1, Landroid/telecom/Conference;

    .line 1313
    .local v1, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_1

    .line 1318
    .end local v0    # "c":Landroid/telecom/IConferenceable;
    .end local v1    # "conference":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 1319
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 1233
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1234
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v2, p1, :cond_0

    .line 1235
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 1236
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1237
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1240
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 1332
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1333
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    .line 1334
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1339
    :goto_0
    return-void

    .line 1337
    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method public final setDialing()V
    .locals 1

    .prologue
    .line 1126
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1127
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1128
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1163
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1164
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1165
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Landroid/telecom/Connection;->setState(I)V

    .line 1166
    const-string v2, "Disconnected with cause %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1168
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 1170
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setInitialized()V
    .locals 1

    .prologue
    .line 1118
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1120
    return-void
.end method

.method public final setInitializing()V
    .locals 1

    .prologue
    .line 1110
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1112
    return-void
.end method

.method public final setNextPostDialWaitChar(C)V
    .locals 3
    .param p1, "nextChar"    # C

    .prologue
    .line 1200
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1201
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1202
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    goto :goto_0

    .line 1204
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    .prologue
    .line 1134
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1135
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1136
    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 1183
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1184
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1185
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    .prologue
    .line 1213
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1214
    iget-boolean v2, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v2, p1, :cond_0

    .line 1215
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 1216
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1217
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 1220
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setRinging()V
    .locals 1

    .prologue
    .line 1102
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1103
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1104
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 1270
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1271
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1272
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1273
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 1275
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 1144
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1145
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 1146
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1147
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 1149
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    .prologue
    .line 1080
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1081
    const-string/jumbo v2, "setVideoState %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    .line 1083
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1084
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1086
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_0

    .line 1346
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    :goto_0
    return-void

    .line 1349
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method protected final updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1766
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1767
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 1769
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method
