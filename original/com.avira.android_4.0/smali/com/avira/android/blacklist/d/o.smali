.class final Lcom/avira/android/blacklist/d/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/blacklist/d/s;


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/l;

.field final synthetic b:Lcom/avira/android/blacklist/d/n;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/d/n;Lcom/avira/android/blacklist/d/l;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/avira/android/blacklist/d/o;->b:Lcom/avira/android/blacklist/d/n;

    iput-object p2, p0, Lcom/avira/android/blacklist/d/o;->a:Lcom/avira/android/blacklist/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/model/BLContact;)V
    .locals 4

    .prologue
    .line 149
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/avira/android/blacklist/model/BLContact;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avira/android/blacklist/model/BLContact;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/o;->b:Lcom/avira/android/blacklist/d/n;

    invoke-virtual {p1}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/d/n;J)I

    .line 153
    :cond_1
    return-void
.end method
