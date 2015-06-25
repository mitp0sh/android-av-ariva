.class public Lcom/avira/android/remotecomponents/CommandIntegrator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BOOLEAN_FALSE_STATE:Ljava/lang/String; = "false"

.field public static final BOOLEAN_TRUE_STATE:Ljava/lang/String; = "true"

.field public static final BUNDLE_DATA_TAG:Ljava/lang/String; = "bundle_data_tag"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avira/android/remotecomponents/CommandIntegrator;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_PARAMS:Ljava/lang/String; = "internal_params"


# instance fields
.field private a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Lcom/avira/android/l;

.field private d:Ljava/util/concurrent/Semaphore;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 486
    new-instance v0, Lcom/avira/android/remotecomponents/a;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/a;-><init>()V

    sput-object v0, Lcom/avira/android/remotecomponents/CommandIntegrator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->f:I

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->f(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->f:I

    .line 86
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v1, v0

    .line 89
    :goto_0
    if-ge v1, v2, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 92
    const-class v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    .line 93
    iget-object v4, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v4, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->e:Ljava/lang/String;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->f:I

    .line 126
    invoke-direct {p0, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->f(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->f:I

    .line 140
    invoke-direct {p0, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->f(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    invoke-direct {v2}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    .line 105
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->d:Ljava/util/concurrent/Semaphore;

    .line 106
    iput-object p1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->e:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->c:Lcom/avira/android/l;

    .line 108
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->f:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    const-string v2, "internal_params"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    .line 192
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/avira/android/common/web/WebResult;)V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    new-instance v0, Lcom/avira/android/remotecomponents/EmailRequestorCommandIntegrator;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/EmailRequestorCommandIntegrator;-><init>()V

    .line 72
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->a(Lcom/avira/android/common/web/WebResult;)V

    .line 76
    :cond_1
    return-void

    .line 51
    :cond_2
    const-string v1, "lockMessage"

    iget-object v2, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    new-instance v0, Lcom/avira/android/remotecomponents/LockMessageCommandIntegrator;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/LockMessageCommandIntegrator;-><init>()V

    goto :goto_0

    .line 55
    :cond_3
    const-string v1, "scanInfo"

    iget-object v2, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    new-instance v0, Lcom/avira/android/remotecomponents/ScanInfoWebResponseCommandIntergrator;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/ScanInfoWebResponseCommandIntergrator;-><init>()V

    goto :goto_0

    .line 59
    :cond_4
    const-string v1, "activatePremium"

    iget-object v2, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 61
    new-instance v0, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/ActivatePremiumCommandIntegrator;-><init>()V

    goto :goto_0

    .line 63
    :cond_5
    const-string v1, "locationInfo"

    iget-object v2, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 65
    new-instance v0, Lcom/avira/android/remotecomponents/LocationInfoCommandIntegrator;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/LocationInfoCommandIntegrator;-><init>()V

    goto :goto_0

    .line 67
    :cond_6
    const-string v1, "getUserInfo"

    iget-object v2, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Lcom/avira/android/remotecomponents/GetUserInfoCommandIntegrator;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/GetUserInfoCommandIntegrator;-><init>()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    const-string v1, "internal_params"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    .line 172
    if-nez v0, :cond_0

    .line 174
    const-string v0, "internal_params"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v0

    .line 177
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->f:I

    .line 158
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    .line 285
    if-nez v0, :cond_0

    .line 287
    const-string v0, "info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v0

    .line 290
    :cond_0
    invoke-virtual {v0, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    const-string v1, "subscription"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    .line 228
    if-nez v0, :cond_0

    .line 230
    const-string v0, "subscription"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v0

    .line 233
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    .line 248
    if-nez v0, :cond_0

    .line 250
    const-string v0, "info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v0

    .line 253
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    const-string v1, ""

    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    const-string v1, "json_command_parent"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    .line 268
    if-nez v0, :cond_0

    .line 270
    const-string v0, "json_command_parent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v0

    .line 273
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    return-object v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    .line 339
    invoke-virtual {v0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    return-object v0

    .line 343
    :cond_0
    new-instance v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;-><init>()V

    .line 344
    invoke-virtual {v0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public final f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OperationType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ComandId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ComandInfoArray "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    return-void
.end method
