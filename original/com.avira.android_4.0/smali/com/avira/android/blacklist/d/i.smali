.class final Lcom/avira/android/blacklist/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/blacklist/d/s;


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/h;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/d/h;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avira/android/blacklist/d/i;->a:Lcom/avira/android/blacklist/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/model/BLContact;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avira/android/blacklist/d/i;->a:Lcom/avira/android/blacklist/d/h;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/h;->a(Lcom/avira/android/blacklist/d/h;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
