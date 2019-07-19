within Modelica.Magnetic.QuasiStatic.FluxTubes.Basic;
model ConstantReluctance "Constant reluctance"

  extends Interfaces.TwoPorts;

  parameter SI.Reluctance R_m=1 "Magnetic reluctance";

equation
  V_m = Phi*R_m;

  annotation (Icon(coordinateSystem(
      preserveAspectRatio=false,
      extent={{-100,-100},{100,100}}), graphics={
      Rectangle(
        extent={{-70,30},{70,-30}},
        lineColor={255,170,85},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid),
      Line(points={{-70,0},{-90,0}}, color={255,170,85}),
      Line(points={{70,0},{90,0}}, color={255,170,85}),
      Text(
        extent={{-150,50},{150,90}},
        textString="%name",
        textColor={0,0,255})}), Documentation(info="<html>
<p>
This constant reluctance is provided for test purposes and simple magnetic network models. The reluctance is not calculated from geometry and permeability of a flux tube, but is provided as parameter.
</p>
</html>"));
end ConstantReluctance;
