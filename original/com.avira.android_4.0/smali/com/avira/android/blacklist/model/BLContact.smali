.class public Lcom/avira/android/blacklist/model/BLContact;
.super Lcom/avira/android/utilities/s;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/avira/android/custom/h;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT_BLACKLISTED:J = -0x2L

.field public static final PRIVATE_CALLER_ID:J = -0x1L

.field public static final UNKNOWN_NAME:Ljava/lang/String; = "unknown"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:Z

.field private d:Lcom/avira/android/blacklist/model/BLNumber;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/avira/android/blacklist/model/a;

    invoke-direct {v0}, Lcom/avira/android/blacklist/model/a;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/model/BLContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 71
    const-string v0, "unknown"

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/avira/android/blacklist/model/BLContact;-><init>(Ljava/lang/String;J)V

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avira/android/utilities/s;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/blacklist/model/BLContact;->c:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/android/blacklist/model/BLContact;->b:J

    .line 92
    const-class v0, Lcom/avira/android/blacklist/model/BLNumber;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLNumber;

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/model/BLContact;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 79
    const-wide/16 v0, -0x2

    new-instance v2, Lcom/avira/android/blacklist/model/BLNumber;

    sget-object v3, Lcom/avira/android/blacklist/d/j;->NONE:Lcom/avira/android/blacklist/d/j;

    invoke-direct {v2, p1, v3}, Lcom/avira/android/blacklist/model/BLNumber;-><init>(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/avira/android/blacklist/model/BLContact;-><init>(Ljava/lang/String;JLcom/avira/android/blacklist/model/BLNumber;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/avira/android/blacklist/model/BLNumber;

    const-string v1, ""

    sget-object v2, Lcom/avira/android/blacklist/d/j;->NONE:Lcom/avira/android/blacklist/d/j;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/blacklist/model/BLNumber;-><init>(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avira/android/blacklist/model/BLContact;-><init>(Ljava/lang/String;JLcom/avira/android/blacklist/model/BLNumber;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JLcom/avira/android/blacklist/model/BLNumber;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/avira/android/utilities/s;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/blacklist/model/BLContact;->c:Z

    .line 54
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->a:Ljava/lang/String;

    .line 62
    :goto_0
    iput-wide p2, p0, Lcom/avira/android/blacklist/model/BLContact;->b:J

    .line 63
    iput-object p4, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    .line 64
    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/avira/android/blacklist/model/BLContact;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLContact;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V
    .locals 1

    .prologue
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Lcom/avira/android/blacklist/model/BLNumber;

    invoke-direct {v0, p1, p2}, Lcom/avira/android/blacklist/model/BLNumber;-><init>(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/blacklist/model/BLNumber;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLContact;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/avira/android/blacklist/model/BLNumber;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLNumber;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLNumber;->b()Lcom/avira/android/blacklist/d/j;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v0}, Lcom/avira/android/blacklist/d/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v0}, Lcom/avira/android/blacklist/d/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLNumber;->b()Lcom/avira/android/blacklist/d/j;

    move-result-object v0

    .line 190
    sget-object v1, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v0}, Lcom/avira/android/blacklist/d/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v0}, Lcom/avira/android/blacklist/d/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 4

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLContact;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 4

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLContact;->b:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLContact;->b:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/model/BLContact;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLContact;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 254
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLContact;->d:Lcom/avira/android/blacklist/model/BLNumber;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 255
    return-void
.end method
