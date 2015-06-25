.class final Lcom/mixpanel/android/mpmetrics/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/j;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/ap;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/mixpanel/android/mpmetrics/w;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/w;Lcom/mixpanel/android/mpmetrics/ap;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/aa;->c:Lcom/mixpanel/android/mpmetrics/w;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/aa;->a:Lcom/mixpanel/android/mpmetrics/ap;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/aa;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;I)V
    .locals 6

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/aa;->a:Lcom/mixpanel/android/mpmetrics/ap;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/aa;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/aa;->c:Lcom/mixpanel/android/mpmetrics/w;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/w;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/aa;->c:Lcom/mixpanel/android/mpmetrics/w;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/r;->c(Lcom/mixpanel/android/mpmetrics/r;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a(Lcom/mixpanel/android/mpmetrics/ap;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 1011
    return-void
.end method
