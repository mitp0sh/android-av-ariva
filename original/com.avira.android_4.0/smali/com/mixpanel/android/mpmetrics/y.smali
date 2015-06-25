.class final Lcom/mixpanel/android/mpmetrics/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/at;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/at;

.field final synthetic c:Lcom/mixpanel/android/mpmetrics/w;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/w;Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/at;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/y;->c:Lcom/mixpanel/android/mpmetrics/w;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/y;->b:Lcom/mixpanel/android/mpmetrics/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/ap;)V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/app/Activity;

    new-instance v1, Lcom/mixpanel/android/mpmetrics/z;

    invoke-direct {v1, p0, p1}, Lcom/mixpanel/android/mpmetrics/z;-><init>(Lcom/mixpanel/android/mpmetrics/y;Lcom/mixpanel/android/mpmetrics/ap;)V

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/g;->a(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/j;)V

    .line 976
    return-void
.end method
