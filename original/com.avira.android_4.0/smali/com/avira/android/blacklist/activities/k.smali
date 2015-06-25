.class final Lcom/avira/android/blacklist/activities/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLContactsListActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/activities/BLContactsListActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/k;->a:Lcom/avira/android/blacklist/activities/BLContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/k;->a:Lcom/avira/android/blacklist/activities/BLContactsListActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->a(Lcom/avira/android/blacklist/activities/BLContactsListActivity;)Lcom/avira/android/blacklist/d/ab;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/ab;->b(Ljava/lang/Boolean;)V

    .line 94
    return-void
.end method
