.class public final Lcom/avira/android/common/web/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCOUNT_ALREADY_EXIST:I = 0x39b

.field public static final DEVICE_ID_NOT_FOUND:I = 0x393

.field public static final IMEI_NOT_FOUND:I = 0x394

.field public static final INVALID_EMAIL_PASSWORD:I = 0x38e

.field public static final INVALID_IMEI_DEVICEID:I = 0x390

.field private static final INVALID_REGISTRATION:I = 0x387

.field private static final INVALID_REGISTRATION_MISSING_C2DM_ID:I = 0x38a

.field private static final INVALID_REGISTRATION_MISSING_IMEI_EMAIL:I = 0x388

.field public static final REGISTERED_EMAIL_NOT_FOUND:I = 0x397

.field private static d:Lcom/avira/android/common/web/l;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/common/web/l;->a:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/common/web/l;->b:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/common/web/l;->c:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/avira/android/common/web/l;->a:Ljava/util/ArrayList;

    const/16 v1, 0x387

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/avira/android/common/web/l;->a:Ljava/util/ArrayList;

    const/16 v1, 0x388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/avira/android/common/web/l;->a:Ljava/util/ArrayList;

    const/16 v1, 0x38a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/avira/android/common/web/l;->b:Ljava/util/ArrayList;

    const/16 v1, 0x390

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/avira/android/common/web/l;->b:Ljava/util/ArrayList;

    const/16 v1, 0x393

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/avira/android/common/web/l;->b:Ljava/util/ArrayList;

    const/16 v1, 0x394

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/avira/android/common/web/l;->b:Ljava/util/ArrayList;

    const/16 v1, 0x397

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/avira/android/common/web/l;->c:Ljava/util/ArrayList;

    const/16 v1, 0x38e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/avira/android/common/web/l;->c:Ljava/util/ArrayList;

    const/16 v1, 0x39b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcom/avira/android/common/web/l;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/avira/android/common/web/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/common/web/l;->d:Lcom/avira/android/common/web/l;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/avira/android/common/web/l;

    invoke-direct {v0}, Lcom/avira/android/common/web/l;-><init>()V

    sput-object v0, Lcom/avira/android/common/web/l;->d:Lcom/avira/android/common/web/l;

    .line 54
    :cond_0
    sget-object v0, Lcom/avira/android/common/web/l;->d:Lcom/avira/android/common/web/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/avira/android/common/web/l;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/avira/android/common/web/l;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
