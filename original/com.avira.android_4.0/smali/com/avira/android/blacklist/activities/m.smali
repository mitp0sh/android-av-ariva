.class final Lcom/avira/android/blacklist/activities/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/l;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/activities/l;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/m;->a:Lcom/avira/android/blacklist/activities/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/m;->a:Lcom/avira/android/blacklist/activities/l;

    iget-object v0, v0, Lcom/avira/android/blacklist/activities/l;->a:Lcom/avira/android/blacklist/activities/BLContactsListActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->b(Lcom/avira/android/blacklist/activities/BLContactsListActivity;)V

    .line 172
    return-void
.end method
