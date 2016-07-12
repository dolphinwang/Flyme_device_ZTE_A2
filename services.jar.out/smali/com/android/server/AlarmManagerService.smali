.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$DMReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$PriorityClass;
    }
.end annotation


# static fields
.field static final ALARM_EVENT:I = 0x1

.field private static Alignment_StartTime:J = 0x0L

.field static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field static final DEBUG_ALARM_CLOCK:Z = true

.field static DEBUG_BATCH:Z = false

.field static DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final IS_WAKEUP_MASK:I = 0x5

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final MIN_FUTURITY:J = 0x1388L

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final MIN_INTERVAL:J = 0xea60L

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field private static final QUANTUM:J = 0x57e40L

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z

.field static localLOGV:Z

.field private static mAlarmMode:I

.field static final mBackgroundIntent:Landroid/content/Intent;

.field private static mCommonBlockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSocialBlockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSpecilIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSupportAlarmGrouping:Z

.field private static mWhitedActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rebatch_startTime:J

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field private dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmIconPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field mCurrentSeq:I

.field private mDMEnable:Z

.field private mDMLock:Ljava/lang/Object;

.field private mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

.field mDateChangeSender:Landroid/app/PendingIntent;

.field private mDmFreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mDmResendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIPOShutdown:Z

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field mInteractive:Z

.field mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

.field mLastAlarmDeliveryTime:J

.field mLastWakeLockUnimportantForLogging:Z

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field private mMinimumPeriod_BlockSocket:J

.field mNativeData:J

.field private mNeedGrouping:Z

.field private mNeedToSetBlockSocket:Z

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPPLEnable:Z

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field private mPowerOffAlarmLock:Ljava/lang/Object;

.field private final mPoweroffAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousTime_SetBlockSocket:J

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private mWaitThreadlock:Ljava/lang/Object;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/AlarmManagerService;->Alignment_StartTime:J

    .line 125
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/android/server/AlarmManagerService;->rebatch_startTime:J

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->mWhitedActions:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->mSpecilIntentList:Ljava/util/ArrayList;

    .line 136
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 137
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 138
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x104

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 147
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 163
    const/4 v0, 0x2

    sput v0, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 164
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    .line 518
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void

    :cond_1
    move v0, v2

    .line 137
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 522
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 167
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 176
    new-instance v0, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 179
    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 183
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 184
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 198
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 207
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 208
    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    .line 209
    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    .line 211
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 212
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 213
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 218
    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 243
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 257
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 258
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 457
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 608
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    .line 609
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    .line 610
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 672
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 675
    iput v2, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 676
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 677
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1217
    new-instance v0, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 523
    return-void
.end method

.method private FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 15
    .param p3, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2887
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "mDmFreeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "resendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 2888
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v13, 0x0

    .line 2889
    .local v13, "isFreeIntent":Z
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2890
    const/4 v13, 0x0

    .line 2891
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2893
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_5

    .line 2894
    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2895
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_1

    .line 2896
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending alarm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_1
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.ALARM_COUNT"

    iget v7, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2902
    iget v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v3, :cond_2

    .line 2903
    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 2905
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2908
    :cond_2
    new-instance v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v7, v8, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 2911
    .local v2, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2912
    iget v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2913
    iget-object v9, v2, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2914
    .local v9, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2915
    iget v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v3, :cond_6

    .line 2916
    const/4 v3, 0x1

    iput v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2917
    move-wide/from16 v0, p3

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2921
    :goto_2
    iget-object v11, v2, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2922
    .local v11, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2923
    iget v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v3, :cond_7

    .line 2924
    const/4 v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2925
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2929
    :goto_3
    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_4

    .line 2931
    :cond_3
    iget v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2932
    iget v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2936
    :cond_4
    const/4 v13, 0x1

    .line 2941
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_5
    if-nez v13, :cond_0

    .line 2942
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2943
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2919
    .restart local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_6
    iget v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2945
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_0
    move-exception v10

    .line 2946
    .local v10, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    goto/16 :goto_0

    .line 2927
    .end local v10    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_7
    :try_start_1
    iget v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2893
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 2953
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12    # "i":I
    :cond_9
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/AlarmManagerService;->mWhitedActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->addRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;J)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;JI)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->shutdownCheckPoweroffAlarm()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->close(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/server/AlarmManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;JJ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 3
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v1, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 552
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 553
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 555
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 556
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v1, :cond_1

    .line 557
    const-string v1, "AlarmManager"

    const-string v2, "addBatchLocked end "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 10
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 3059
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 3061
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    sget-object v7, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 3062
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 3063
    rsub-int/lit8 v7, v3, 0x0

    add-int/lit8 v3, v7, -0x1

    .line 3065
    :cond_0
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_1

    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :cond_1
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3068
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_2

    .line 3070
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    const/4 v4, 0x0

    .line 3072
    .local v4, "position":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3073
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 3074
    .local v5, "time":Landroid/text/format/Time;
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 3075
    const-string v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3076
    .local v6, "timeStr":Ljava/lang/String;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    add-int/lit8 v4, v4, 0x1

    .line 3079
    goto :goto_0

    .line 3082
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "position":I
    .end local v5    # "time":Landroid/text/format/Time;
    .end local v6    # "timeStr":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private addRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .param p2, "rtcAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3334
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3335
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3336
    .local v1, "isInList":Z
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3338
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3339
    .local v0, "alarmAction":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3340
    const/4 v1, 0x1

    .line 3345
    .end local v0    # "alarmAction":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 3346
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3347
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add new action Checking alarm addRTCWakeupList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    :cond_2
    return-void
.end method

.method private native bootFromAlarm(I)Z
.end method

.method private checkRTCWakeupActions(Ljava/lang/String;)Z
    .locals 6
    .param p1, "rtcAction"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 3279
    sget-object v5, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3280
    .local v2, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3281
    .local v1, "isInList":Z
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3283
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3284
    .local v0, "alarmAction":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 3296
    .end local v0    # "alarmAction":Ljava/lang/String;
    .end local v1    # "isInList":Z
    :cond_1
    :goto_0
    return v1

    .line 3288
    .restart local v1    # "isInList":Z
    :cond_2
    sget-object v5, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3289
    .local v3, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3291
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3292
    .restart local v0    # "alarmAction":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v4

    .line 3293
    goto :goto_0
.end method

.method private checkRTCWakeupActions(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 3
    .param p2, "rtcAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3268
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3269
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3272
    .local v0, "alarmAction":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3273
    const/4 v2, 0x1

    .line 3276
    .end local v0    # "alarmAction":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkRTCWakeupActionsInWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rtcAction"    # Ljava/lang/String;

    .prologue
    .line 3313
    const/4 v0, 0x0

    .line 3314
    .local v0, "isInWhiteList":Z
    const-string v1, "com.moji.zteweather"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3315
    const/4 v1, 0x0

    .line 3331
    :goto_0
    return v1

    .line 3316
    :cond_0
    const-string v1, "com.android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zte"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "qualcomm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mediatek"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "clock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "alarmalert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "calendar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fmradio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3327
    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    move v1, v0

    .line 3331
    goto :goto_0

    .line 3328
    :cond_3
    sget-object v1, Lcom/android/server/AlarmManagerService;->mWhitedActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3329
    sget-object v1, Lcom/android/server/AlarmManagerService;->mWhitedActions:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AlarmManagerService;->checkRTCWakeupActions(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method private native close(J)V
.end method

.method static convertToElapsed(JI)J
    .locals 6
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 526
    if-eq p2, v0, :cond_0

    if-nez p2, :cond_2

    .line 527
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr p0, v2

    .line 530
    :cond_1
    return-wide p0

    .line 526
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2009
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2010
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2011
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v9

    .line 2012
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2013
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2009
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2016
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "label":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowRTC"    # J
    .param p6, "nowELAPSED"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1987
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1988
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1989
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1990
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1987
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1993
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .prologue
    .line 1654
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1655
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1656
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1657
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1661
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return-object v1

    .line 1655
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1661
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1799
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "EHm"

    .line 1800
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v2, ""

    :goto_1
    return-object v2

    .line 1799
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    const-string v1, "Ehma"

    goto :goto_0

    .line 1801
    .restart local v0    # "pattern":Ljava/lang/String;
    .restart local v1    # "skeleton":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1665
    const-string v0, "AlarmManager"

    const-string v1, "getNextAlarmClockImpl is called before Lock "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1667
    :try_start_0
    const-string v0, "AlarmManager"

    const-string v2, "getNextAlarmClockImpl is called in Lock "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v1

    return-object v0

    .line 1669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getRTCAlignLevel(Ljava/lang/String;)I
    .locals 4
    .param p1, "rtcAction"    # Ljava/lang/String;

    .prologue
    .line 3300
    sget-object v3, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3301
    .local v1, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x3

    .line 3302
    .local v2, "levleValue":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3305
    .local v0, "alarmAction":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3306
    const/4 v2, 0x1

    goto :goto_0

    .line 3310
    .end local v0    # "alarmAction":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 2743
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 2744
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    .line 2745
    .local v2, "uid":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 2746
    .local v3, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v3, :cond_0

    .line 2747
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2748
    .restart local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2750
    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2751
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_1

    .line 2752
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v2, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 2753
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    :cond_1
    return-object v0
.end method

.method private native init()J
.end method

.method private initRtcWakeUpList()V
    .locals 2

    .prologue
    .line 3370
    sget-object v0, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3371
    sget-object v0, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3372
    sget-object v0, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    const-string v1, "com.zte.weidian"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3373
    sget-object v0, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    const-string v1, "com.zte.softda"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3374
    sget-object v0, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    const-string v1, "com.zte.aliveupdate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3375
    sget-object v0, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    const-string v1, "zte.com.market"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3376
    sget-object v0, Lcom/android/server/AlarmManagerService;->mSocialBlockList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3379
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.jingdong.app.mall"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3380
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.hf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3381
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.gau.go.launcherex.gowidget.weatherwidget"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3382
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "cn.com.fetion"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.ume.browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3384
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.sds.android.ttpod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3385
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.baidu.netdisk"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3386
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.baidu.wenku"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3387
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.moji.mjweather"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3388
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.lashou.groupurchasing"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3389
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.wochacha"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3390
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.imangi.templerun2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3391
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.Qunar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3392
    sget-object v0, Lcom/android/server/AlarmManagerService;->mCommonBlockList:Ljava/util/ArrayList;

    const-string v1, "com.qzone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3395
    sget-object v0, Lcom/android/server/AlarmManagerService;->mSpecilIntentList:Ljava/util/ArrayList;

    const-string v1, "com.moji.mjweather.VOICE_ALARM_ALERT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3396
    return-void
.end method

.method private isBootFromAlarm(I)Z
    .locals 1
    .param p1, "fd"    # I

    .prologue
    .line 3017
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->bootFromAlarm(I)Z

    move-result v0

    return v0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 882
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 884
    .local v1, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 885
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 886
    const/4 v4, 0x1

    .line 890
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v4

    .line 889
    :cond_1
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isSystemApp false app.packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1996
    packed-switch p0, :pswitch_data_0

    .line 2004
    const-string v0, "--unknown--"

    :goto_0
    return-object v0

    .line 1997
    :pswitch_0
    const-string v0, "RTC"

    goto :goto_0

    .line 1998
    :pswitch_1
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 1999
    :pswitch_2
    const-string v0, "ELAPSED"

    goto :goto_0

    .line 2000
    :pswitch_3
    const-string v0, "ELAPSED_WAKEUP"

    goto :goto_0

    .line 1996
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .locals 12
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 1618
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1619
    .local v9, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1620
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1621
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1622
    .local v4, "nowELAPSED":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1623
    .local v0, "NZ":I
    const/4 v11, 0x0

    .local v11, "iz":I
    :goto_0
    if-ge v11, v0, :cond_0

    .line 1624
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 1625
    .local v10, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v2, "Batch "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1626
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v3, "  "

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1627
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1628
    const-string v2, "AlarmManager"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1623
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1631
    .end local v10    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 540
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    sub-long v0, p2, p0

    .line 543
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 544
    const-wide/16 v0, 0x0

    .line 546
    :cond_0
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    .line 540
    goto :goto_0
.end method

.method private removeLocked(Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1848
    const/4 v1, 0x0

    .line 1849
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1850
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1851
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1852
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1853
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1849
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1857
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_2

    .line 1859
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove(operation) changed bounds; rebatching operation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_3

    .line 1863
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1868
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1869
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1871
    :cond_2
    return-void

    .line 1865
    :cond_3
    const-string v3, "AlarmManager"

    const-string v4, "mAlarmBatches.size() is larger than 300 , do not rebatch"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removePoweroffAlarmLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3086
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 3087
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 3100
    :cond_0
    return-void

    .line 3092
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3094
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3095
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3096
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3097
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private removeRTCWakeupList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .param p2, "rtcAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3352
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3353
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3354
    .local v1, "isInList":Z
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3356
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3357
    .local v0, "alarmAction":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3358
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 3359
    const/4 v1, 0x1

    .line 3363
    .end local v0    # "alarmAction":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 3364
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add new action Checking alarm removeRTCWakeupList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_2
    return-void
.end method

.method private resendDmPendingList(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2959
    .local p1, "DmResendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2960
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2961
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2963
    .local v6, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v1, :cond_1

    .line 2964
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending alarm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_1
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.ALARM_COUNT"

    iget v5, v6, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2971
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_2

    .line 2972
    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v2, v6, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v3, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v4, v6, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 2974
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2976
    :cond_2
    new-instance v0, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, v6, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v4, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v5, v6, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 2978
    .local v0, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2979
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2980
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2981
    .local v7, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2982
    iget v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v1, :cond_4

    .line 2983
    const/4 v1, 0x1

    iput v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2988
    :goto_1
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2989
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2990
    iget v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v1, :cond_5

    .line 2991
    const/4 v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2992
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2996
    :goto_2
    iget v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v1, :cond_0

    .line 2998
    :cond_3
    iget v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2999
    iget v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3003
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_0
    move-exception v8

    .line 3004
    .local v8, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v2, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 2986
    .end local v8    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_4
    :try_start_1
    iget v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    goto :goto_1

    .line 2994
    .restart local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_5
    iget v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3011
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_6
    return-void
.end method

.method private resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 14
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v3, 0x7

    const-wide/16 v12, 0x3e8

    .line 3108
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    .line 3109
    .local v10, "setPackageName":Ljava/lang/String;
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3112
    .local v8, "latestTime":J
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 3113
    const-string v0, "zte.com.cn.alarmclock"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3114
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set Prop 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const/4 v3, 0x6

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3134
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset power off alarm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    const-string v0, "sys.power_off_alarm"

    div-long v2, v8, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    :goto_1
    return-void

    .line 3118
    :cond_0
    const-string v0, "com.mediatek.schpwronoff"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3119
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set Prop 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto :goto_0

    .line 3124
    :cond_1
    const-string v0, "com.mediatek.poweronofftest"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3125
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set Prop 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto/16 :goto_0

    .line 3130
    :cond_2
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to set power off alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3137
    :cond_3
    const-string v0, "AlarmManager"

    const-string v1, " do not set alarm to RTC when fd close "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .prologue
    .line 1766
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1767
    .local v3, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1769
    const-string v5, "AlarmManager"

    const-string v6, "sendNextAlarmClockChanged begin"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1771
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1772
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1773
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 1774
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1772
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1776
    .end local v4    # "userId":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1777
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1780
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 1781
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1782
    .restart local v4    # "userId":I
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1783
    .local v1, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "next_alarm_formatted"

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v4}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1780
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1777
    .end local v0    # "N":I
    .end local v1    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1791
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    const-string v5, "AlarmManager"

    const-string v6, "sendNextAlarmClockChanged end"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    return-void
.end method

.method private native set(JIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V
    .locals 26
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "isStandalone"    # Z
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;
    .param p16, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p17, "userId"    # I
    .param p18, "mNeedGrouping"    # Z

    .prologue
    .line 1177
    new-instance v6, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move/from16 v21, p17

    move/from16 v22, p18

    invoke-direct/range {v6 .. v22}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1179
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1181
    if-eqz p13, :cond_3

    const/16 v24, -0x1

    .line 1182
    .local v24, "whichBatch":I
    :goto_0
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " whichBatch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    if-gez v24, :cond_4

    .line 1184
    new-instance v23, Lcom/android/server/AlarmManagerService$Batch;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1185
    .local v23, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move/from16 v0, p13

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    .line 1186
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1198
    :cond_0
    :goto_1
    if-eqz p16, :cond_1

    .line 1199
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1200
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1203
    :cond_1
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v7, :cond_2

    .line 1204
    if-eqz p14, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->validateConsistencyLocked()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1205
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tipping-point operation: type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " when="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " when(hex)="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " whenElapsed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " maxWhen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p10

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " op="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p12

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " standalone="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p13

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1214
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1215
    return-void

    .line 1181
    .end local v23    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v24    # "whichBatch":I
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v24

    goto/16 :goto_0

    .line 1188
    .restart local v24    # "whichBatch":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AlarmManagerService$Batch;

    .line 1189
    .restart local v23    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " alarm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " add to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1193
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1194
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto/16 :goto_1
.end method

.method private native setKernelTime(JJ)I
.end method

.method private native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    .line 1962
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1966
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 1967
    const-wide/16 v4, 0x0

    .line 1968
    .local v4, "alarmSeconds":J
    const-wide/16 v6, 0x0

    .line 1973
    .local v6, "alarmNanoseconds":J
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set alarm to RTC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 1983
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :goto_1
    return-void

    .line 1970
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v4, p2, v0

    .line 1971
    .restart local v4    # "alarmSeconds":J
    const-wide/16 v0, 0x3e8

    rem-long v0, p2, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .restart local v6    # "alarmNanoseconds":J
    goto :goto_0

    .line 1976
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_1
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the mNativeData from RTC is abnormal,  mNativeData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 1978
    .local v8, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v8, Landroid/os/Message;->what:I

    .line 1980
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1981
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v8, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private shutdownCheckPoweroffAlarm()V
    .locals 22

    .prologue
    .line 3174
    const-string v2, "AlarmManager"

    const-string v3, "into shutdownCheckPoweroffAlarm()!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    const/4 v15, 0x0

    .line 3177
    .local v15, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3178
    .local v16, "nowTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3179
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 3180
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3181
    .local v14, "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3182
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3183
    .local v10, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3184
    .local v12, "latestTime":J
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v15

    .line 3186
    const-wide/16 v2, 0x7530

    sub-long v2, v12, v2

    cmp-long v2, v2, v16

    if-gtz v2, :cond_0

    .line 3187
    const-string v2, "AlarmManager"

    const-string v3, "get target latestTime < 30S!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3200
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v12    # "latestTime":J
    .end local v14    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3191
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v14    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 3192
    .local v18, "tempIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3193
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3194
    .restart local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3196
    .restart local v12    # "latestTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 3197
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    iget v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const-wide/16 v6, 0x3e8

    div-long v6, v12, v6

    const-wide/16 v8, 0x3e8

    rem-long v8, v12, v8

    const-wide/16 v20, 0x3e8

    mul-long v8, v8, v20

    const-wide/16 v20, 0x3e8

    mul-long v8, v8, v20

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto :goto_1

    .line 3200
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12    # "latestTime":J
    :cond_3
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3201
    const-string v2, "AlarmManager"

    const-string v3, "away shutdownCheckPoweroffAlarm()!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .locals 17

    .prologue
    .line 1676
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v13, :cond_1

    .line 1731
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1681
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1682
    .local v11, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 1684
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1685
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_4

    .line 1686
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 1687
    .local v6, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1689
    .local v1, "M":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v1, :cond_3

    .line 1690
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1691
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v13, :cond_2

    .line 1692
    iget v12, v5, Lcom/android/server/AlarmManagerService$Alarm;->userId:I

    .line 1695
    .local v12, "userId":I
    const-string v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found AlarmClockInfo at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v0, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2

    .line 1702
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1689
    .end local v12    # "userId":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1685
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1709
    .end local v1    # "M":I
    .end local v6    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9    # "j":I
    :cond_4
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1710
    .local v3, "NN":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_6

    .line 1711
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1712
    .local v10, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1713
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1714
    .local v7, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1715
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1710
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1720
    .end local v7    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v10    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v12    # "userId":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1721
    .local v4, "NNN":I
    add-int/lit8 v8, v4, -0x1

    :goto_4
    if-ltz v8, :cond_8

    .line 1722
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1723
    .restart local v12    # "userId":I
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    .line 1724
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1721
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 1727
    .end local v12    # "userId":I
    :cond_8
    sget-boolean v13, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v13, :cond_0

    .line 1728
    const-string v13, "AlarmManager"

    const-string v14, "updateNextAlarmClockLocked end "

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v3, 0x4

    .line 1735
    if-eqz p2, :cond_1

    .line 1737
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p1}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1748
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1749
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1750
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 1751
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    .line 1752
    const-string v0, "AlarmManager"

    const-string v1, "updateNextAlarmInfoForUserLocked end "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_0
    return-void

    .line 1743
    :cond_1
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): None"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private updatePoweroffAlarm(J)V
    .locals 7
    .param p1, "nowRTC"    # J

    .prologue
    .line 3025
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3027
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 3029
    monitor-exit v3

    .line 3056
    :goto_0
    return-void

    .line 3032
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_1

    .line 3034
    monitor-exit v3

    goto :goto_0

    .line 3055
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3037
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3039
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3041
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3043
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_4

    .line 3052
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3053
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 3055
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 3047
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    const-string v2, "AlarmManager"

    const-string v4, "power off alarm update deleted"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private validateConsistencyLocked()Z
    .locals 9

    .prologue
    .line 1634
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v6, :cond_1

    .line 1635
    const-wide/high16 v4, -0x8000000000000000L

    .line 1636
    .local v4, "lastTime":J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1637
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1638
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1639
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_0

    .line 1641
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1637
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1643
    :cond_0
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONSISTENCY FAILURE: Batch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is out of order"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->logBatchesLocked(Ljava/text/SimpleDateFormat;)V

    .line 1646
    const/4 v6, 0x0

    .line 1650
    .end local v0    # "N":I
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "lastTime":J
    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 5
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 565
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 566
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 567
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 568
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-boolean v3, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-nez v3, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 566
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, -0x2

    goto :goto_1
.end method

.method public bootFromPoweroffAlarm()Z
    .locals 3

    .prologue
    .line 822
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 824
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 823
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 481
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 482
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 485
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-string v5, "android.intent.action.TIME_TICK"

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 486
    const/4 v2, 0x0

    .line 493
    .local v2, "alarmPrio":I
    :goto_1
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 494
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 495
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_0
    if-nez v4, :cond_1

    .line 496
    new-instance v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 497
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_1
    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 501
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v5, v6, :cond_5

    .line 503
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 504
    iget v5, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    iput v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    .line 481
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_3
    iget-boolean v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v5, :cond_4

    .line 488
    const/4 v2, 0x1

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 490
    .end local v2    # "alarmPrio":I
    :cond_4
    const/4 v2, 0x2

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 509
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_5
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v2, v5, :cond_2

    .line 510
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    goto :goto_2

    .line 514
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_6
    return-void
.end method

.method public cancelPoweroffAlarmImpl(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 3147
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove power off alarm pacakge name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 3153
    const-string v0, "persist.sys.bootpackage"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3154
    .local v8, "bootReason":Ljava/lang/String;
    if-eqz v8, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3155
    const-string v0, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "zte.com.cn.alarmclock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3156
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3157
    const-string v0, "sys.power_off_alarm"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3165
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 3167
    :cond_1
    monitor-exit v9

    .line 3168
    return-void

    .line 3158
    :cond_2
    const-string v0, "2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mediatek.schpwronoff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.mediatek.poweronofftest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3160
    :cond_3
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const/4 v3, 0x7

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3161
    const-string v0, "sys.power_off_alarm"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3167
    .end local v8    # "bootReason":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 9
    .param p1, "nowELAPSED"    # J

    .prologue
    const/4 v2, 0x0

    .line 2242
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eqz v3, :cond_1

    .line 2255
    :cond_0
    :goto_0
    return v2

    .line 2245
    :cond_1
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 2248
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v3, v4, p1

    if-gtz v3, :cond_0

    .line 2254
    :cond_2
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v0, p1, v4

    .line 2255
    .local v0, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1360
    array-length v3, p2

    if-lt p3, v3, :cond_0

    .line 1361
    const-string v3, "  Invalid argument!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    :goto_0
    add-int/lit8 v2, p3, 0x1

    .line 1387
    .local v2, "optiSocketPeriod":I
    array-length v3, p2

    if-lt v2, v3, :cond_6

    .line 1388
    const-string v3, "  Invalid minimum socket block period index!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    :goto_1
    return-void

    .line 1363
    .end local v2    # "optiSocketPeriod":I
    :cond_0
    const-string v3, "on"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1364
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1365
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1366
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1367
    :cond_1
    const-string v3, "off"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1368
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1369
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1370
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1372
    :cond_2
    const-string v3, "0"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1373
    sput v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1374
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1375
    :cond_3
    const-string v3, "1"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1376
    sput v6, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1377
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1378
    :cond_4
    const-string v3, "2"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1379
    const/4 v3, 0x2

    sput v3, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1380
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1382
    :cond_5
    const-string v3, "  Invalid argument!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1391
    .restart local v2    # "optiSocketPeriod":I
    :cond_6
    :try_start_0
    aget-object v1, p2, v2

    .line 1392
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 1393
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 1394
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMinimumPeriod_BlockSocket(secs) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1399
    .end local v1    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1400
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1401
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socket block period exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1397
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v3, "  Invalid minimum socket block period!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 5
    .param p1, "nowELAPSED"    # J

    .prologue
    .line 2222
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v2

    .line 2223
    .local v0, "timeSinceOn":J
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 26
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2259
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 2260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2261
    .local v20, "nowRTC":J
    const/16 v18, 0x0

    .line 2265
    .local v18, "needRebatch":Z
    const/16 v19, 0x0

    .line 2267
    .local v19, "openLteGateSuccess":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_0

    .line 2268
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 2269
    .local v12, "b":Landroid/os/IBinder;
    invoke-static {v12}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 2270
    const-string v5, "data_shaping"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/mediatek/datashaping/IDataShapingManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    .line 2273
    .end local v12    # "b":Landroid/os/IBinder;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    if-eqz v5, :cond_1

    .line 2275
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/mediatek/datashaping/IDataShapingManager;->openLteDataUpLinkGate(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 2281
    :cond_1
    :goto_0
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openLteGateSuccess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    if-eqz v5, :cond_3

    .line 2284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J

    sub-long v22, v6, v8

    .line 2285
    .local v22, "socktUnblockingTimeElapsed":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    cmp-long v5, v22, v6

    if-ltz v5, :cond_7

    .line 2289
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_2

    .line 2290
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 2291
    .local v13, "b1":Landroid/os/IBinder;
    invoke-static {v13}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 2294
    .end local v13    # "b1":Landroid/os/IBinder;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2302
    .end local v22    # "socktUnblockingTimeElapsed":J
    :cond_3
    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 2305
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_5

    .line 2306
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2308
    .local v11, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->updatePoweroffAlarm(J)V

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2312
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    if-nez v5, :cond_8

    .line 2313
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/AlarmManagerService;->FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V

    .line 2314
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2390
    .end local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    if-eqz v18, :cond_6

    .line 2391
    const-string v5, "AlarmManager"

    const-string v6, " deliverAlarmsLocked removeInvalidAlarmLocked then rebatch "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2393
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2394
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2396
    :cond_6
    return-void

    .line 2276
    .end local v17    # "i":I
    :catch_0
    move-exception v15

    .line 2277
    .local v15, "e":Ljava/lang/Exception;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error openLteDataUpLinkGate false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2295
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v22    # "socktUnblockingTimeElapsed":J
    :catch_1
    move-exception v15

    .line 2296
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setBlockUplinkSocket false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2299
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socktUnblockingTimeElapsed(ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < mMinimumPeriod_BlockSocket: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2316
    .end local v22    # "socktUnblockingTimeElapsed":J
    .restart local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v17    # "i":I
    :cond_8
    :try_start_3
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2320
    const-string v5, "ro.mtk_ipo_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2321
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v5, :cond_a

    .line 2305
    :cond_9
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 2316
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2327
    :cond_a
    :try_start_5
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_b

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_b
    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_c

    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 2329
    :cond_c
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wakeup alarm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "needGrouping = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_d
    iget-object v4, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.ALARM_COUNT"

    iget v9, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2337
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v5, :cond_e

    .line 2340
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v8, v11, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2344
    :cond_e
    new-instance v4, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v9, v11, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 2346
    .local v4, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2347
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2349
    iget-object v14, v4, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2350
    .local v14, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2351
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v5, :cond_10

    .line 2352
    const/4 v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2353
    move-wide/from16 v0, p2

    iput-wide v0, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2357
    :goto_4
    iget-object v0, v4, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v16, v0

    .line 2358
    .local v16, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2359
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v5, :cond_12

    .line 2360
    const/4 v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2361
    move-wide/from16 v0, p2

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2365
    :goto_5
    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_9

    .line 2367
    :cond_f
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2368
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2369
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_13

    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 2370
    const/16 v24, 0x0

    .local v24, "wi":I
    :goto_6
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v24

    if-ge v0, v5, :cond_9

    .line 2371
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, v11, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2370
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 2355
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v24    # "wi":I
    :cond_10
    iget v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 2380
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_2
    move-exception v15

    .line 2381
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_9

    .line 2384
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->removeInvalidAlarmLocked(Landroid/app/PendingIntent;)Z

    move-result v5

    if-nez v5, :cond_11

    if-eqz v18, :cond_14

    :cond_11
    const/16 v18, 0x1

    :goto_7
    goto/16 :goto_3

    .line 2363
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_12
    :try_start_6
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_6
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 2386
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_3
    move-exception v15

    .line 2387
    .local v15, "e":Ljava/lang/RuntimeException;
    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    invoke-static {v5, v6, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 2376
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_13
    :try_start_7
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 2384
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v14    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    :cond_14
    const/16 v18, 0x0

    goto :goto_7
.end method

.method dumpImpl(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 38
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1411
    const/16 v29, 0x0

    .line 1412
    .local v29, "opti":I
    :goto_0
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v29

    if-ge v0, v5, :cond_0

    .line 1413
    aget-object v28, p2, v29

    .line 1414
    .local v28, "opt":Ljava/lang/String;
    if-eqz v28, :cond_0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_1

    .line 1430
    .end local v28    # "opt":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v29

    if-ge v0, v5, :cond_3

    .line 1431
    aget-object v14, p2, v29

    .line 1432
    .local v14, "cmd":Ljava/lang/String;
    add-int/lit8 v29, v29, 0x1

    .line 1433
    const-string v5, "log"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1434
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 1615
    .end local v14    # "cmd":Ljava/lang/String;
    :goto_1
    return-void

    .line 1417
    .restart local v28    # "opt":Ljava/lang/String;
    :cond_1
    add-int/lit8 v29, v29, 0x1

    .line 1418
    const-string v5, "-h"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1419
    const-string v5, "alarm manager dump options:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    const-string v5, "  log  [on/off]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    const-string v5, "  Example:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    const-string v5, "  $adb shell dumpsys alarm log on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    const-string v5, "  $adb shell dumpsys alarm log off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1426
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; use -h for help"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1439
    .end local v28    # "opt":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 1440
    :try_start_0
    const-string v5, "Current Alarm Manager state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1442
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1443
    .local v8, "nowELAPSED":J
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1445
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    const-string v5, "nowRTC="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1446
    const-string v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1447
    const-string v5, " nowELAPSED="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1448
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1449
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_4

    .line 1450
    const-string v5, "Time since non-interactive: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1451
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1452
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1453
    const-string v5, "Max wakeup delay: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1454
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1455
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1456
    const-string v5, "Time since last dispatch: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1457
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1458
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1459
    const-string v5, "Next non-wakeup delivery time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1460
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1461
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1464
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v36, v10, v8

    add-long v26, v6, v36

    .line 1465
    .local v26, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v36, v10, v8

    add-long v24, v6, v36

    .line 1466
    .local v24, "nextNonWakeupRTC":J
    const-string v5, "Next non-wakeup alarm: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1468
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v24

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    const-string v5, "Next wakeup: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1470
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    const-string v5, "Num time change events: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1474
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1475
    const-string v5, "Pending alarm batches: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 1478
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 1479
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v7, "  "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_2

    .line 1614
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v8    # "nowELAPSED":J
    .end local v10    # "nowRTC":J
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v24    # "nextNonWakeupRTC":J
    .end local v26    # "nextWakeupRTC":J
    :catchall_0
    move-exception v5

    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1483
    .restart local v8    # "nowELAPSED":J
    .restart local v10    # "nowRTC":J
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v24    # "nextNonWakeupRTC":J
    .restart local v26    # "nextWakeupRTC":J
    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1484
    const-string v5, "Past-due non-wakeup alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1486
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v7, "  "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1491
    :goto_3
    const-string v5, "  Number of delayed alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1492
    const-string v5, ", total delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1493
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1494
    const-string v5, "  Max delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1495
    const-string v5, ", max non-interactive time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1497
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1499
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1500
    const-string v5, "  Broadcast ref count: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1501
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v6, "  Recent problems"

    const-string v7, "    "

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1504
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1507
    :cond_6
    const/16 v5, 0xa

    new-array v0, v5, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v32, v0

    .line 1508
    .local v32, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v15, Lcom/android/server/AlarmManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1519
    .local v15, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v23, 0x0

    .line 1520
    .local v23, "len":I
    const/16 v22, 0x0

    .local v22, "iu":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_e

    .line 1521
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/util/ArrayMap;

    .line 1522
    .local v33, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v20, 0x0

    .local v20, "ip":I
    :goto_5
    invoke-virtual/range {v33 .. v33}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_d

    .line 1523
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1524
    .local v13, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v21, 0x0

    .local v21, "is":I
    :goto_6
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_c

    .line 1525
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1526
    .local v17, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v23, :cond_b

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-static {v0, v5, v1, v2, v15}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v30

    .line 1528
    .local v30, "pos":I
    :goto_7
    if-gez v30, :cond_7

    .line 1529
    move/from16 v0, v30

    neg-int v5, v0

    add-int/lit8 v30, v5, -0x1

    .line 1531
    :cond_7
    move-object/from16 v0, v32

    array-length v5, v0

    move/from16 v0, v30

    if-ge v0, v5, :cond_9

    .line 1532
    move-object/from16 v0, v32

    array-length v5, v0

    sub-int v5, v5, v30

    add-int/lit8 v16, v5, -0x1

    .line 1533
    .local v16, "copylen":I
    if-lez v16, :cond_8

    .line 1534
    add-int/lit8 v5, v30, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v30

    move-object/from16 v2, v32

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1536
    :cond_8
    aput-object v17, v32, v30

    .line 1537
    move-object/from16 v0, v32

    array-length v5, v0

    move/from16 v0, v23

    if-ge v0, v5, :cond_9

    .line 1538
    add-int/lit8 v23, v23, 0x1

    .line 1524
    .end local v16    # "copylen":I
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1489
    .end local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v15    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v20    # "ip":I
    .end local v21    # "is":I
    .end local v22    # "iu":I
    .end local v23    # "len":I
    .end local v30    # "pos":I
    .end local v32    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_a
    const-string v5, "(none)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1526
    .restart local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v15    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v20    # "ip":I
    .restart local v21    # "is":I
    .restart local v22    # "iu":I
    .restart local v23    # "len":I
    .restart local v32    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_b
    const/16 v30, 0x0

    goto :goto_7

    .line 1522
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1520
    .end local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v21    # "is":I
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 1544
    .end local v20    # "ip":I
    .end local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_e
    if-lez v23, :cond_10

    .line 1545
    const-string v5, "  Top Alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 1547
    aget-object v17, v32, v18

    .line 1548
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1549
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_f

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    :cond_f
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1551
    const-string v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1552
    const-string v5, " wakeups, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1553
    const-string v5, " alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1554
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1556
    const-string v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1546
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8

    .line 1561
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v18    # "i":I
    :cond_10
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    const-string v5, "  Alarm Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    .local v31, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_16

    .line 1565
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/util/ArrayMap;

    .line 1566
    .restart local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v20, 0x0

    .restart local v20    # "ip":I
    :goto_a
    invoke-virtual/range {v33 .. v33}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_15

    .line 1567
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1568
    .restart local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v5, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1569
    iget v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v5, :cond_11

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    :cond_11
    iget v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1571
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1572
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1573
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1574
    const-string v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1575
    const-string v5, " wakeups:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 1577
    const/16 v21, 0x0

    .restart local v21    # "is":I
    :goto_b
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_12

    .line 1578
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 1580
    :cond_12
    move-object/from16 v0, v31

    invoke-static {v0, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1581
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_c
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v18

    if-ge v0, v5, :cond_14

    .line 1582
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1583
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_13

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1585
    :cond_13
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1586
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1587
    const-string v5, " wakes "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1588
    const-string v5, " alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1590
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1581
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 1566
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_14
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_a

    .line 1564
    .end local v13    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v18    # "i":I
    .end local v21    # "is":I
    :cond_15
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_9

    .line 1614
    .end local v20    # "ip":I
    .end local v33    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_16
    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public enableDm()I
    .locals 2

    .prologue
    .line 2847
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2848
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    if-eqz v0, :cond_0

    .line 2861
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resendDmPendingList(Ljava/util/ArrayList;)V

    .line 2862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 2863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 2865
    :cond_0
    monitor-exit v1

    .line 2866
    const/4 v0, -0x1

    return v0

    .line 2865
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 830
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 834
    return-void

    .line 832
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 10
    .param p1, "interactive"    # Z

    .prologue
    .line 1926
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v6, p1, :cond_2

    .line 1927
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 1928
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1929
    .local v2, "nowELAPSED":J
    if-eqz p1, :cond_3

    .line 1930
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1931
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v2, v6

    .line 1932
    .local v4, "thisDelayTime":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1933
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 1934
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1936
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1937
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1939
    .end local v4    # "thisDelayTime":J
    :cond_1
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 1940
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, v2, v6

    .line 1941
    .local v0, "dur":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 1942
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 1949
    .end local v0    # "dur":J
    .end local v2    # "nowELAPSED":J
    :cond_2
    :goto_0
    return-void

    .line 1946
    .restart local v2    # "nowELAPSED":J
    :cond_3
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    goto :goto_0
.end method

.method public lookForPackageFromAmsImpl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3220
    if-nez p1, :cond_0

    .line 3221
    const/4 v0, 0x0

    .line 3224
    :goto_0
    return v0

    .line 3223
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3224
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 3225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1952
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1953
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1954
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    const/4 v2, 0x1

    .line 1958
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return v2

    .line 1952
    .restart local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1958
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStart()V
    .locals 14

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 682
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 684
    const-string v9, "ro.mtk_bg_power_saving_support"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 685
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    .line 689
    :cond_0
    const-string v9, "persist.sys.timezone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 693
    sget-boolean v9, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-nez v9, :cond_1

    .line 695
    :try_start_0
    new-instance v9, Lcom/mediatek/amplus/AlarmManagerPlus;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/mediatek/amplus/AlarmManagerPlus;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 703
    .local v7, "pm":Landroid/os/PowerManager;
    const/4 v9, 0x1

    const-string v10, "*alarm*"

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 705
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.TIME_TICK"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x50000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v9, v10, v11, v12, v13}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 710
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.DATE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 712
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x4000000

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v9, v10, v5, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 716
    new-instance v9, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 717
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 718
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 719
    new-instance v9, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    .line 720
    new-instance v9, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 722
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 723
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    const-string v10, "zte.com.cn.alarmclock"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :try_start_1
    const-string v9, "DmAgent"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 727
    .local v2, "binder":Landroid/os/IBinder;
    if-eqz v2, :cond_4

    .line 728
    invoke-static {v2}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 729
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v6

    .line 730
    .local v6, "locked":Z
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dm state lock is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-nez v6, :cond_3

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 738
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v6    # "locked":Z
    :goto_2
    new-instance v9, Lcom/android/server/AlarmManagerService$DMReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$DMReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 739
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 740
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 745
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->initRtcWakeUpList()V

    .line 749
    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_5

    .line 750
    new-instance v8, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v8, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 751
    .local v8, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 757
    .end local v8    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    :goto_3
    const-string v9, "ro.mtk_ipo_support"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 758
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 759
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    const-string v9, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    const-string v9, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 763
    const-string v9, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v9, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 810
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_2
    const-string v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 811
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 812
    const-string v9, "data_shaping"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lcom/mediatek/datashaping/IDataShapingManager;

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    .line 815
    const-string v9, "alarm"

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 816
    return-void

    .line 696
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v3

    .line 697
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 731
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .restart local v2    # "binder":Landroid/os/IBinder;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "locked":Z
    .restart local v7    # "pm":Landroid/os/PowerManager;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 733
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v6    # "locked":Z
    :cond_4
    :try_start_2
    const-string v9, "AlarmManager"

    const-string v10, "dm binder is null!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 735
    .end local v2    # "binder":Landroid/os/IBinder;
    :catch_1
    move-exception v3

    .line 736
    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "AlarmManager"

    const-string v10, "remote error"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 753
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v9, "AlarmManager"

    const-string v10, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method rebatchAllAlarms()V
    .locals 2

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 579
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 26
    .param p1, "doValidate"    # Z

    .prologue
    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 585
    .local v22, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 586
    .local v20, "nowElapsed":J
    sget-wide v2, Lcom/android/server/AlarmManagerService;->rebatch_startTime:J

    sub-long v2, v20, v2

    const-wide/32 v4, 0x57e40

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 587
    const-string v2, "AlarmManager"

    const-string v3, "rebatchAllAlarmsLocked return"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    return-void

    .line 590
    :cond_0
    sput-wide v20, Lcom/android/server/AlarmManagerService;->rebatch_startTime:J

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 592
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 593
    .local v19, "oldBatches":I
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rebatchAllAlarmsLocked begin oldBatches count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v17, 0x0

    .local v17, "batchNum":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 595
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AlarmManagerService$Batch;

    .line 596
    .local v16, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v14

    .line 597
    .local v14, "N":I
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rebatchAllAlarmsLocked  batch.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v14, :cond_2

    .line 599
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v15

    .line 600
    .local v15, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v4, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v8, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v10, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-wide v12, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-wide/from16 v24, v0

    cmp-long v2, v12, v24

    if-nez v2, :cond_1

    const/4 v11, 0x1

    :goto_3
    iget-object v12, v15, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v13, v15, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/AlarmManagerService;->ztesetImpl(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 598
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 600
    :cond_1
    const/4 v11, 0x0

    goto :goto_3

    .line 594
    .end local v15    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 604
    .end local v14    # "N":I
    .end local v16    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v18    # "i":I
    :cond_3
    const-string v2, "AlarmManager"

    const-string v3, "rebatchAllAlarmsLocked end"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 12
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2203
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2204
    .local v11, "numBatches":I
    const/4 v9, 0x0

    .local v9, "nextBatch":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 2205
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Batch;

    .line 2206
    .local v7, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v2, v7, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v1, v2, p2

    if-lez v1, :cond_1

    .line 2219
    .end local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    .line 2210
    .restart local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2211
    .local v10, "numAlarms":I
    const/4 v8, 0x0

    .local v8, "nextAlarm":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 2212
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2213
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v0, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-wide/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(Lcom/android/server/AlarmManagerService;JILjava/lang/String;)V

    .line 2216
    .local v0, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2211
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2204
    .end local v0    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public removeFromAmsImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3208
    if-nez p1, :cond_0

    .line 3214
    :goto_0
    return-void

    .line 3211
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3212
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 3213
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 872
    if-nez p1, :cond_0

    .line 878
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 876
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 877
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeInvalidAlarmLocked(Landroid/app/PendingIntent;)Z
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1894
    const/4 v1, 0x0

    .line 1895
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1896
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1897
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1898
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1899
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1895
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1902
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    return v1
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1874
    const/4 v1, 0x0

    .line 1875
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1876
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1877
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1878
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1879
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1875
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1883
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_2

    .line 1885
    const-string v3, "AlarmManager"

    const-string v4, "remove(package) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1888
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1889
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1891
    :cond_2
    return-void
.end method

.method removeUserLocked(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1906
    const/4 v1, 0x0

    .line 1907
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1908
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1909
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1910
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1911
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1907
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1915
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_3

    .line 1916
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_2

    .line 1917
    const-string v3, "AlarmManager"

    const-string v4, "remove(user) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1920
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1921
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1923
    :cond_3
    return-void
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1810
    iget-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1811
    const-string v4, "AlarmManager"

    const-string v5, "IPO Shutdown so drop the repeating alarm"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    const-wide/16 v2, 0x0

    .line 1817
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1818
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 1819
    .local v1, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 1822
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1823
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1824
    const/4 v4, 0x2

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 1826
    :cond_2
    if-eq v0, v1, :cond_3

    .line 1827
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1830
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_3
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1831
    cmp-long v4, v2, v8

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_5

    .line 1832
    :cond_4
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1837
    :cond_5
    cmp-long v4, v2, v8

    if-eqz v4, :cond_6

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 1838
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 1839
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 1841
    :cond_6
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v4, :cond_0

    .line 1842
    const-string v4, "AlarmManager"

    const-string v5, "rescheduleKernelAlarmsLocked end "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 52
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "isStandalone"    # Z
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 1061
    if-nez p8, :cond_0

    .line 1062
    const-string v5, "AlarmManager"

    const-string v10, "set/setRepeating ignored because there is no intent"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_0
    return-void

    .line 1071
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_1

    .line 1072
    const-string v5, "AlarmManager"

    const-string v10, "IPO Shutdown so drop the alarm"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1079
    :cond_1
    const-wide/32 v10, 0x2932e00

    cmp-long v5, p4, v10

    if-lez v5, :cond_2

    .line 1080
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Window length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-wide/32 p4, 0x36ee80

    .line 1087
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v5, p6, v10

    if-lez v5, :cond_3

    const-wide/32 v10, 0xea60

    cmp-long v5, p6, v10

    if-gez v5, :cond_3

    .line 1088
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Suspiciously short interval "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " millis; expanding to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " seconds"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-wide/32 p6, 0xea60

    .line 1094
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v5, p2, v10

    if-gez v5, :cond_4

    .line 1095
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v50, v0

    .line 1096
    .local v50, "who":J
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v48, v0

    .line 1097
    .local v48, "what":J
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid alarm trigger time! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v50

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v48

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-wide/16 p2, 0x0

    .line 1104
    .end local v48    # "what":J
    .end local v50    # "who":J
    :cond_4
    const/4 v5, 0x7

    move/from16 v0, p1

    if-eq v0, v5, :cond_5

    const/16 v5, 0x8

    move/from16 v0, p1

    if-ne v0, v5, :cond_9

    .line 1105
    :cond_5
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_6

    .line 1106
    const-string v5, "AlarmManager"

    const-string v10, "alarm driver not open ,return!"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1110
    :cond_6
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm set type 7 8, package name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v39

    .line 1113
    .local v39, "packageName":Ljava/lang/String;
    const/16 v46, 0x0

    .line 1114
    .local v46, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 1115
    .local v44, "nowTime":J
    cmp-long v5, p2, v44

    if-gez v5, :cond_7

    .line 1116
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "power off alarm set time is wrong! nowTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v44

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; triggerAtTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1120
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1121
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 1122
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    .line 1123
    .local v19, "poweroffAlarmUserId":I
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v20, 0x1

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v14, p6

    move-object/from16 v16, p8

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    invoke-direct/range {v4 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1124
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/AlarmManagerService;->addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 1125
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1128
    :cond_8
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1129
    const/16 p1, 0x0

    .line 1134
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v19    # "poweroffAlarmUserId":I
    .end local v39    # "packageName":Ljava/lang/String;
    .end local v44    # "nowTime":J
    .end local v46    # "setPackageName":Ljava/lang/String;
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1135
    .local v6, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v42

    .line 1137
    .local v42, "nominalTrigger":J
    const-wide/16 v10, 0x1388

    add-long v40, v6, v10

    .line 1138
    .local v40, "minTrigger":J
    cmp-long v5, v42, v40

    if-lez v5, :cond_a

    move-wide/from16 v8, v42

    .line 1141
    .local v8, "triggerElapsed":J
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-nez v5, :cond_b

    .line 1142
    move-wide/from16 v28, v8

    .line 1159
    .end local v6    # "nowElapsed":J
    .local v28, "maxElapsed":J
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v37

    .line 1161
    .local v37, "userId":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1163
    :try_start_1
    const-string v5, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "APP set("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") : type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " triggerAtTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " win="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tElapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " maxElapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " interval="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " standalone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p9

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " alarmClockInfo = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    move/from16 v38, v0

    move-object/from16 v20, p0

    move/from16 v21, p1

    move-wide/from16 v22, p2

    move-wide/from16 v24, v8

    move-wide/from16 v26, p4

    move-wide/from16 v30, p6

    move-object/from16 v32, p8

    move/from16 v33, p9

    move-object/from16 v35, p10

    move-object/from16 v36, p11

    invoke-direct/range {v20 .. v38}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1170
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1128
    .end local v8    # "triggerElapsed":J
    .end local v28    # "maxElapsed":J
    .end local v37    # "userId":I
    .end local v40    # "minTrigger":J
    .end local v42    # "nominalTrigger":J
    .restart local v39    # "packageName":Ljava/lang/String;
    .restart local v44    # "nowTime":J
    .restart local v46    # "setPackageName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .end local v39    # "packageName":Ljava/lang/String;
    .end local v44    # "nowTime":J
    .end local v46    # "setPackageName":Ljava/lang/String;
    .restart local v6    # "nowElapsed":J
    .restart local v40    # "minTrigger":J
    .restart local v42    # "nominalTrigger":J
    :cond_a
    move-wide/from16 v8, v40

    .line 1138
    goto/16 :goto_1

    .line 1143
    .restart local v8    # "triggerElapsed":J
    :cond_b
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-eqz v5, :cond_d

    .line 1145
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    .end local v6    # "nowElapsed":J
    sget v15, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    const/16 v16, 0x1

    move/from16 v7, p1

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v16}, Lcom/mediatek/amplus/AlarmManagerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v28

    .line 1146
    .restart local v28    # "maxElapsed":J
    const-wide/16 v10, 0x0

    cmp-long v5, v28, v10

    if-gez v5, :cond_c

    .line 1147
    const-wide/16 v10, 0x0

    sub-long v28, v10, v28

    .line 1148
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    goto/16 :goto_2

    .line 1150
    :cond_c
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 1151
    const/16 p9, 0x0

    goto/16 :goto_2

    .line 1153
    .end local v28    # "maxElapsed":J
    .restart local v6    # "nowElapsed":J
    :cond_d
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-gez v5, :cond_e

    move-wide/from16 v10, p6

    .line 1154
    invoke-static/range {v6 .. v11}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v28

    .restart local v28    # "maxElapsed":J
    goto/16 :goto_2

    .line 1156
    .end local v28    # "maxElapsed":J
    :cond_e
    add-long v28, v8, p4

    .restart local v28    # "maxElapsed":J
    goto/16 :goto_2
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 8
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 844
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    .line 845
    .local v3, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 846
    :try_start_0
    const-string v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 848
    :cond_2
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_3

    .line 849
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timezone changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_3
    const/4 v3, 0x1

    .line 852
    const-string v5, "persist.sys.timezone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 858
    .local v1, "gmtOffset":I
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v5, 0xea60

    div-int v5, v1, v5

    neg-int v5, v5

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    .line 859
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 863
    if-eqz v3, :cond_0

    .line 864
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 866
    const-string v5, "time-zone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 859
    .end local v0    # "current":Ljava/lang/String;
    .end local v1    # "gmtOffset":I
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "first"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2521
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 2522
    .local v1, "unimportant":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    .line 2523
    if-nez p5, :cond_0

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    if-eqz v2, :cond_2

    .line 2524
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 2528
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    .line 2529
    if-eqz p2, :cond_4

    .line 2530
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2545
    .end local v1    # "unimportant":Z
    :goto_2
    return-void

    .line 2521
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2526
    .restart local v1    # "unimportant":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2540
    .end local v1    # "unimportant":Z
    :catch_0
    move-exception v2

    .line 2544
    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_2

    .line 2534
    .restart local v1    # "unimportant":Z
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 2536
    .local v0, "uid":I
    if-ltz v0, :cond_3

    .line 2537
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .locals 32
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .line 2032
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v30, 0x0

    .line 2036
    .local v30, "hasWakeup":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/AlarmManagerService$Batch;

    .line 2038
    .local v27, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_2

    .line 2096
    .end local v27    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 2097
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2100
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_9

    .line 2101
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v31

    if-ge v0, v2, :cond_9

    .line 2102
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Triggering alarm #"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    .line 2045
    .end local v31    # "i":I
    .restart local v27    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2047
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v25

    .line 2048
    .local v25, "N":I
    const/16 v31, 0x0

    .restart local v31    # "i":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 2049
    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v26

    .line 2050
    .local v26, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2052
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v2, :cond_3

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2053
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 2056
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2060
    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    .line 2063
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v6, p2, v6

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v6, v8

    add-long/2addr v2, v6

    long-to-int v2, v2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2066
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v28, v2, v6

    .line 2067
    .local v28, "delta":J
    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v4, v2, v28

    .line 2069
    .local v4, "nextElapsed":J
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-eqz v2, :cond_8

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    sget v11, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/mediatek/amplus/AlarmManagerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v14

    .line 2076
    .local v14, "maxElapsed":J
    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    .line 2077
    move-object/from16 v0, v26

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v26

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v8, v2, v28

    move-object/from16 v0, v26

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->userId:I

    move/from16 v23, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->needGrouping:Z

    move/from16 v24, v0

    move-object/from16 v6, p0

    move-wide v10, v4

    invoke-direct/range {v6 .. v24}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 2083
    .end local v4    # "nextElapsed":J
    .end local v14    # "maxElapsed":J
    .end local v28    # "delta":J
    :cond_5
    move-object/from16 v0, v26

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v2, :cond_6

    .line 2084
    const/16 v30, 0x1

    .line 2088
    :cond_6
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_7

    .line 2089
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2048
    :cond_7
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 2074
    .restart local v4    # "nextElapsed":J
    .restart local v28    # "delta":J
    :cond_8
    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v14

    .restart local v14    # "maxElapsed":J
    goto :goto_2

    .line 2106
    .end local v4    # "nextElapsed":J
    .end local v14    # "maxElapsed":J
    .end local v25    # "N":I
    .end local v26    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v27    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v28    # "delta":J
    .end local v31    # "i":I
    :cond_9
    return v30
.end method

.method protected writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/io/File;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 3232
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/AlarmManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3236
    :goto_0
    return-void

    .line 3233
    :catch_0
    move-exception v0

    .line 3234
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File path retriving failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 3240
    if-nez p1, :cond_1

    .line 3263
    :cond_0
    :goto_0
    return-void

    .line 3242
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3243
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 3245
    .local v3, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 3246
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 3249
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3250
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 3251
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3255
    if-eqz v4, :cond_3

    .line 3257
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 3260
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 3258
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 3259
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "AlarmManager"

    const-string v6, "FAIL to writeStringToFile "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 3260
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 3252
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3253
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeStringToFile error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3255
    if-eqz v3, :cond_0

    .line 3257
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 3258
    :catch_2
    move-exception v0

    .line 3259
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "AlarmManager"

    const-string v6, "FAIL to writeStringToFile "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3255
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 3257
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3260
    :cond_2
    :goto_3
    throw v5

    .line 3258
    :catch_3
    move-exception v0

    .line 3259
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "AlarmManager"

    const-string v7, "FAIL to writeStringToFile "

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3255
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 3252
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method ztesetImpl(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 62
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "isStandalone"    # Z
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 898
    if-nez p8, :cond_0

    .line 899
    const-string v5, "AlarmManager"

    const-string v10, "set/setRepeating ignored because there is no intent"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :goto_0
    return-void

    .line 904
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_1

    .line 905
    const-string v5, "AlarmManager"

    const-string v10, "IPO Shutdown so drop the alarm"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 912
    :cond_1
    const-wide/32 v10, 0x2932e00

    cmp-long v5, p4, v10

    if-lez v5, :cond_2

    .line 913
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Window length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-wide/32 p4, 0x36ee80

    .line 919
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v5, p2, v10

    if-gez v5, :cond_3

    .line 920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v60, v0

    .line 921
    .local v60, "who":J
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v58, v0

    .line 922
    .local v58, "what":J
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid alarm trigger time! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v60

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v58

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-wide/16 p2, 0x0

    .line 929
    .end local v58    # "what":J
    .end local v60    # "who":J
    :cond_3
    const/4 v5, 0x7

    move/from16 v0, p1

    if-eq v0, v5, :cond_4

    const/16 v5, 0x8

    move/from16 v0, p1

    if-ne v0, v5, :cond_8

    .line 930
    :cond_4
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_5

    .line 931
    const-string v5, "AlarmManager"

    const-string v10, "alarm driver not open ,return!"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 935
    :cond_5
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarm set type 7 8, package name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v52

    .line 938
    .local v52, "packageName":Ljava/lang/String;
    const/16 v54, 0x0

    .line 939
    .local v54, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    .line 940
    .local v50, "nowTime":J
    cmp-long v5, p2, v50

    if-gez v5, :cond_6

    .line 941
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "power off alarm set time is wrong! nowTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v50

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; triggerAtTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 945
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 946
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 947
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    .line 948
    .local v19, "poweroffAlarmUserId":I
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v20, 0x1

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v14, p6

    move-object/from16 v16, p8

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    invoke-direct/range {v4 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 949
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/AlarmManagerService;->addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 951
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 953
    :cond_7
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 954
    const/16 p1, 0x0

    .line 958
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v19    # "poweroffAlarmUserId":I
    .end local v50    # "nowTime":J
    .end local v52    # "packageName":Ljava/lang/String;
    .end local v54    # "setPackageName":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_9

    if-eqz p8, :cond_9

    const-string v5, "com.android.phone"

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v5, "com.android.internal.telephony.data-stall"

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 961
    sput-wide p2, Lcom/android/server/AlarmManagerService;->Alignment_StartTime:J

    .line 962
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wt Alignment_StartTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v12, Lcom/android/server/AlarmManagerService;->Alignment_StartTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_9
    if-eqz p1, :cond_a

    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_b

    :cond_a
    if-eqz p8, :cond_b

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_d

    .line 1015
    :cond_b
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1018
    .local v6, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v48

    .line 1020
    .local v48, "nominalTrigger":J
    const-wide/16 v10, 0x1388

    add-long v46, v6, v10

    .line 1021
    .local v46, "minTrigger":J
    cmp-long v5, v48, v46

    if-lez v5, :cond_19

    move-wide/from16 v8, v48

    .line 1024
    .local v8, "triggerElapsed":J
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-nez v5, :cond_1a

    .line 1025
    move-wide/from16 v28, v8

    .line 1042
    .end local v6    # "nowElapsed":J
    .local v28, "maxElapsed":J
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v37

    .line 1044
    .local v37, "userId":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1045
    :try_start_1
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v5, :cond_c

    .line 1046
    const-string v5, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") : type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " triggerAtTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " win="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tElapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " maxElapsed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " interval="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " standalone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p9

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_c
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    move/from16 v38, v0

    move-object/from16 v20, p0

    move/from16 v21, p1

    move-wide/from16 v22, p2

    move-wide/from16 v24, v8

    move-wide/from16 v26, p4

    move-wide/from16 v30, p6

    move-object/from16 v32, p8

    move/from16 v33, p9

    move-object/from16 v35, p10

    move-object/from16 v36, p11

    invoke-direct/range {v20 .. v38}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1053
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 953
    .end local v8    # "triggerElapsed":J
    .end local v28    # "maxElapsed":J
    .end local v37    # "userId":I
    .end local v46    # "minTrigger":J
    .end local v48    # "nominalTrigger":J
    .restart local v50    # "nowTime":J
    .restart local v52    # "packageName":Ljava/lang/String;
    .restart local v54    # "setPackageName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 968
    .end local v50    # "nowTime":J
    .end local v52    # "packageName":Ljava/lang/String;
    .end local v54    # "setPackageName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v53

    .line 969
    .local v53, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_e

    sget-object v5, Lcom/android/server/AlarmManagerService;->mSpecilIntentList:Ljava/util/ArrayList;

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/android/server/AlarmManagerService;->checkRTCWakeupActions(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 970
    :cond_e
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " in whiteList app.packageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v53

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 971
    :cond_f
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-nez v5, :cond_10

    const-string v5, "com.moji.zteweather"

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "android"

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 973
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " isSystemApp true app.packageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 976
    :cond_10
    const-wide/32 v44, 0x57e40

    .line 977
    .local v44, "basicAlignTime":J
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v39

    .line 978
    .local v39, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->checkRTCWakeupActionsInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "android.content.syncmanager.SYNC_ALARM"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 981
    :cond_11
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setReating young:  triggerAtTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", interval = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",elapsednow = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",currentTimenow = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-nez p1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v56, v10, v12

    .line 986
    .local v56, "skew":J
    :goto_4
    sub-long v42, p2, v56

    .line 987
    .local v42, "adjustedTriggerTime":J
    move-wide/from16 v40, p6

    .line 988
    .local v40, "adjustedInterval":J
    const-wide/16 v10, 0x0

    sget-wide v12, Lcom/android/server/AlarmManagerService;->Alignment_StartTime:J

    cmp-long v5, v10, v12

    if-nez v5, :cond_12

    .line 989
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sput-wide v10, Lcom/android/server/AlarmManagerService;->Alignment_StartTime:J

    .line 991
    :cond_12
    const-wide/32 v10, 0x57e40

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->getRTCAlignLevel(Ljava/lang/String;)I

    move-result v5

    int-to-long v12, v5

    mul-long v44, v10, v12

    .line 992
    const-wide/16 v10, 0x0

    sget-wide v12, Lcom/android/server/AlarmManagerService;->Alignment_StartTime:J

    sub-long v12, v42, v12

    rem-long v12, v12, v44

    cmp-long v5, v10, v12

    if-eqz v5, :cond_13

    .line 993
    sget-wide v10, Lcom/android/server/AlarmManagerService;->Alignment_StartTime:J

    sget-wide v12, Lcom/android/server/AlarmManagerService;->Alignment_StartTime:J

    sub-long v12, v42, v12

    div-long v12, v12, v44

    mul-long v12, v12, v44

    add-long v42, v10, v12

    .line 995
    :cond_13
    const-wide/16 v10, 0x0

    rem-long v12, v40, v44

    cmp-long v5, v10, v12

    if-eqz v5, :cond_14

    .line 996
    div-long v10, v40, v44

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    mul-long v40, v44, v10

    .line 998
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    cmp-long v5, v42, v10

    if-gtz v5, :cond_15

    .line 999
    add-long v42, v42, v44

    .line 1001
    :cond_15
    add-long p2, v42, v56

    .line 1002
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v5, v0, :cond_16

    .line 1003
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setReating change young: type = 2 triggerAtTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v42

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", interval = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v40

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",now = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_16
    if-nez p1, :cond_17

    .line 1007
    const-string v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setReating change young: type = 0  adjustedTriggerTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v42

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", interval = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v40

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",now = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",triggerAtTime ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_17
    move-wide/from16 p6, v40

    goto/16 :goto_1

    .line 983
    .end local v40    # "adjustedInterval":J
    .end local v42    # "adjustedTriggerTime":J
    .end local v56    # "skew":J
    :cond_18
    const-wide/16 v56, 0x0

    goto/16 :goto_4

    .end local v39    # "action":Ljava/lang/String;
    .end local v44    # "basicAlignTime":J
    .end local v53    # "pkgName":Ljava/lang/String;
    .restart local v6    # "nowElapsed":J
    .restart local v46    # "minTrigger":J
    .restart local v48    # "nominalTrigger":J
    :cond_19
    move-wide/from16 v8, v46

    .line 1021
    goto/16 :goto_2

    .line 1026
    .restart local v8    # "triggerElapsed":J
    :cond_1a
    const-string v5, "ro.mtk_bg_power_saving_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    if-eqz v5, :cond_1c

    .line 1028
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    .end local v6    # "nowElapsed":J
    sget v15, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    const/16 v16, 0x1

    move/from16 v7, p1

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v16}, Lcom/mediatek/amplus/AlarmManagerPlus;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v28

    .line 1029
    .restart local v28    # "maxElapsed":J
    const-wide/16 v10, 0x0

    cmp-long v5, v28, v10

    if-gez v5, :cond_1b

    .line 1030
    const-wide/16 v10, 0x0

    sub-long v28, v10, v28

    .line 1031
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    goto/16 :goto_3

    .line 1033
    :cond_1b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 1034
    const/16 p9, 0x0

    goto/16 :goto_3

    .line 1036
    .end local v28    # "maxElapsed":J
    .restart local v6    # "nowElapsed":J
    :cond_1c
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-gez v5, :cond_1d

    move-wide/from16 v10, p6

    .line 1037
    invoke-static/range {v6 .. v11}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v28

    .restart local v28    # "maxElapsed":J
    goto/16 :goto_3

    .line 1039
    .end local v28    # "maxElapsed":J
    :cond_1d
    add-long v28, v8, p4

    .restart local v28    # "maxElapsed":J
    goto/16 :goto_3
.end method
